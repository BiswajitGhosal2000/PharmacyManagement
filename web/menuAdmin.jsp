<%-- 
    Document   : menuAdmin
    Created on : 22-Feb-2023, 12:09:34 am
    Author     : sandeep kamila
--%>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
    function goTo(method){
        alert(method);
                $.ajax({
                url: method,
                success: function (responseText) {
                console.log(responseText);
                $("#changeableArea").html(responseText);
                }
                });
            }
</script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/menuAdmin.css">
<div class="hero">
    <header>
    <nav>
        <h2 class="logo">MedEasy<i class="fa-solid fa-house-medical"></i></h2>
        <ul>
            <li> <a href="homeAdmin.jsp"> Home </a></li>
            <li> <a href="inventory.jsp"> Inventory</a></li>
            <li> <a href="showEmployee.jsp"> Show Employee </a></li>
            <li> <a href="VerifyEmployee.jsp"> Verify Employee </a></li>
            <li> <a href="salesReport.jsp"> Sales Report </a></li>
            <li> <a href="GetAllOrder"> Order </a></li>
        </ul>
        <img src="images/avijit sir.jpeg" class="user-pic" onclick="toggleMenu()">

        <div class="sub-menu-wrap" id="subMenu">
            <div class="sub-menu">
                <div class="user-info">
                    <img src="images/avijit sir.jpeg">
                    <h3> Dr. Avijit Chattopadhyay </h3>
                </div>
                <hr>

                <a href="#" class="sub-menu-link">
                    <img src="images/profile.png">
                    <p>Edit Profile</p>
                    <span> > </span>
                </a>

                <a href="#" class="sub-menu-link">
                    <img src="images/setting.png">
                    <p>Settings and Privacy</p>
                    <span> > </span>
                </a>

                <a href="#" class="sub-menu-link">
                    <img src="images/help.png">
                    <p>Help & Support</p>
                    <span> > </span>
                </a>

                <a href="Logout" class="sub-menu-link">
                    <img src="images/logout.png">
                    <p>Logout</p>
                    <span> > </span>
                </a>

            </div>
        </div>
    </nav>
</header>
</div>

<script>
    let subMenu = document.getElementById("subMenu");

    function toggleMenu() {
        subMenu.classList.toggle("open-menu");
    }
</script>