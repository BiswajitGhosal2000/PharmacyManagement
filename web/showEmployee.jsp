<%-- 
    Document   : showEmployee
    Created on : 21-Feb-2023, 12:35:53 pm
    Author     : lokes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

        <title>Pharmacy Management</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/carousel/">

        <!-- Bootstrap core CSS -->
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/carousel.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>

        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
        <style>
            #example_wrapper{
                width: 100%;
                display: block;
                margin: auto;
            }
        </style>
    </head>
    <body class="text-center">

        <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top " style="background-color: #4863A0;">
                <a class="navbar-brand" href="#">Carousel</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Show Employee <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>
                    </ul>
                    <form class="form-inline mt-2 mt-md-0">
                        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </nav>
        </header>



        <main role="main">
            <div class="jumbotron">
                <table class="table table-bordered table-striped text-center " id="example">
                    <thead class="bg-info">
                        
                        <c:if test="${not empty EmpMsg}">
                            <c:out value="${EmpMsg}"/>
                        </c:if>
                        <tr>
                            <th>Employee Id</th>
                            <th>Aadhar No</th>
                            <th>Email Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>District</th>
                            <th>City</th>
                            <th>State</th>
                            <th>Pin Code</th>
                            <th>Gender</th>
                            <th>Phone Number</th>
                            <th>Age</th>
                            <th>Salary</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="emp" items="${VerifiedEmployee}">   
                            <tr>

                                <td>${emp.getEmployeeId()}</td>
                                <td>${emp.getAadharNo()}</td>
                                <td>${emp.getEmailId()}</td>
                                <td>${emp.getFirstName()}</td>
                                <td>${emp.getLastName()}</td>
                                <td>${emp.getDistrict()}</td>
                                <td>${emp.getCity()}</td>
                                <td>${emp.getState()}</td>
                                <td>${emp.getPincode()}</td>
                                <td>${emp.getGender()}</td>
                                <td>${emp.getPhoneNumber()}</td>
                                <td>${emp.getAge()}</td>
                                <td>${emp.getSalary()}</td>
                                <td>
                                    <a href="EditEmployee?employeeId=${emp.getEmployeeId()}" class=" text-decoration-none">
                                        <button class="w-20 btn btn-sm btn-info text-center"><i class="bi bi-pencil-square"></i></button>
                                    </a>
                                    <a href="DeleteEmployee?employeeId=${emp.getEmployeeId()}" class=" text-decoration-none">
                                        <button class="w-20 btn btn-sm btn-danger text-center"><i class="bi bi-trash"></i></button>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>                         


                </table>
            </div>

        </main>
        <script src =  "js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>


</html>
