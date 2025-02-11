const express = require('express');
const path = require('path');
const bodyParser = require("body-parser");
const mysql = require('mysql2');

const app = express();
const port = 3000;
app.use(bodyParser.json());

// เชื่อมต่อ MySQL
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '1234',  // ระบุรหัสผ่านของ MySQL
  database: 'thai_food'  // ชื่อฐานข้อมูล
});

db.connect((err) => {
  if (err) {
      console.error('Database connection failed: ' + err.stack);
      return;
  }
  console.log('Connected to MySQL database');
});

// ตั้งค่า View Engine
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// เสิร์ฟไฟล์ static เช่น CSS และรูปภาพ
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    res.render('main');
});

app.get('/menu-curry', (req, res) => {
    res.render('menu-curry');
});

app.get('/api/menus', (req, res) => {
  console.log("/api/menus")
  db.query('SELECT * FROM menus', (err, results) => {
      if (err) {
          return res.status(500).json({ message: err.message });
      }
      res.json(results);
  });
});

// API สำหรับเพิ่มเมนูใหม่
app.post('/api/menus', (req, res) => {
  const { name, description, price, category } = req.body;
  const query = 'INSERT INTO menus (name, description, price, category) VALUES (?, ?, ?, ?)';

  db.query(query, [name, description, price, category], (err, results) => {
      if (err) {
          return res.status(400).json({ message: err.message });
      }
      res.status(201).json({ id: results.insertId, name, description, price, category });
  });
});

// รันเซิร์ฟเวอร์
app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});
