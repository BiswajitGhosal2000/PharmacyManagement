<%-- 
    Document   : menuAdmin2
    Created on : 02-Mar-2023, 12:44:14 pm
    Author     : Biswajit
--%>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
    function goTo(method) {
        //alert(method);
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
<link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
<nav class="navbar navbar-expand-lg navbar-primary sticky-top py-3 mb-3" style="color: white;background-image: linear-gradient(to top right, #05204b, #4c7bc7, #031a40);">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="#">MedEasy</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse m-auto" id="navbarScroll">
            <ul class="navbar-nav me-auto my-4 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active text-warning" aria-current="page" href="homeAdmin.jsp"> Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="inventory.jsp">Inventory</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="showEmployee.jsp">Show Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="VerifyEmployee.jsp">Verify Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="salesReport.jsp">Sales Report</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="GetAllOrder">Order History</a>
                </li>
            </ul>
            <div class="nav-item dropdown ">
                <a class="nav-link dropdown-item" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="images/profile.png" width="40" height="40" class="rounded-circle" alt="...">
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarScrollingDropdown">
                    <li><a class="dropdown-item">Welcome,</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#"><h4>${Admin.getFirstName()} ${Admin.getLastName()} </h4></a></li>
                    <li><a class="dropdown-item pt-2" href="#"><img src="images/email.png" style="padding-right: 5px" width="30" height="30" alt="...">${Admin.getEmailId()}</a></li>
                    <li><a class="dropdown-item pt-2" href="Logout"><img src="images/logout.png" style="padding-right: 5px" width="30" height="30" alt="...">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>