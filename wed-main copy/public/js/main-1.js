document.addEventListener('DOMContentLoaded', function() {
    // ตรวจสอบ URL parameter id
    const urlParams = new URLSearchParams(window.location.search);
    const id = urlParams.get('id');
    if (!id) {
        console.error('ID parameter is missing in the URL');
        return;
    }

    fetch('http://localhost:3000/api/menus')
        .then(response => response.json())  // แปลงข้อมูลที่ได้รับเป็น JSON
        .then(data => {
            // ตรวจสอบข้อมูลที่ได้รับจาก API

            
            const menuList = document.getElementById('menu-list');
            if (!menuList) {
                console.error("menuList element not found in the HTML");
                return;
            }
            // ลูปข้อมูลเมนูและแสดงในหน้าเว็บ
            let foundMenu = false;
            data.forEach(menu => {
                if(menu.id.toString() == id) {
                    foundMenu = true;
            console.log(menu);
                    
                    const menuItem = document.createElement('div');
                    menuItem.classList.add('menu-item');
                    menuItem.innerHTML = `
                        <img src="./img/${menu.id}.png" alt="${menu.name}">
                        <p><strong>${menu.name}</strong></p>
                        <p class="ingredients">วัตถุดิบ: ${menu.object}</p>
                        <p class="recipe">วิธีทำ: ${menu.description}</p>
                    `;
                    menuList.appendChild(menuItem);  // เพิ่มเมนูที่แสดงผลในหน้าเว็บ
                }
            });

            if (!foundMenu) {
                console.log("Menu with the given ID was not found.");
            }
        })
        .catch(error => console.error('Error fetching menu data:', error));
});
