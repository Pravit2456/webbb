document.addEventListener('DOMContentLoaded', function() {
    // ดึงข้อมูลเมนูจาก API
    fetch('http://localhost:3000/api/menus')
        .then(response => response.json())  // แปลงข้อมูลที่ได้เป็น JSON
        .then(data => {
            const menuList = document.querySelector('.menu-list');
            menuList.innerHTML = ''; // เคลียร์ข้อมูลที่มีอยู่เดิม

            data.forEach(menu => {
                // สร้าง HTML ใหม่สำหรับแต่ละเมนู
                const menuItem = document.createElement('div');
                menuItem.classList.add('menu-item');
                menuItem.innerHTML = `
                    <a href="menu-curry?id=${menu.id}">
                        <img src="./img/${menu.id}.png" alt="${menu.name}">
                        <p>${menu.name}</p>
                    </a>
                `;
                menuList.appendChild(menuItem);
            });
        })
        .catch(error => console.error('Error fetching menu data:', error));
});
