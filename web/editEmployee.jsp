<%-- 
    Document   : login
    Created on : 21-Feb-2023, 12:11:42 pm
    Author     : RITWIK SHAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

        <title>Edit employee</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/carousel/">

        <!-- Bootstrap core CSS -->
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/menu_css.css" rel="stylesheet">
        <link href="css/product.css" rel="stylesheet">
        <link href="css/signin.css" rel="stylesheet"> 
        <link rel="stylesheet" href="css/styleEditEmployee.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>

        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500;600&display=swap" rel="stylesheet">
        
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            :root{
                --primary-font-family: 'Poppins', sans-sarif;
                --light-white: #f5f8fa;
                --gray: #5e6278;
                --gray-1: #e3e3e3;
            }

            body{
                font-family: var(--primary-font-family);
                font-size: 14px;
            }
            .wrapper{
                padding: 0 0 100px;
                background-image: url("images/bg.png");
                background-position: bottom center;
                background-repeat: no-repeat;
                background-size: contain;
                background-attachment: fixed;
                min-height: 100%;
            }
            .wrapper .submit_btn{
                padding: 15px;
                font-weight: 500;
            }
        </style> 

    </head>
    <body  class="wrapper">

        <main role="main">
            <section>
            <div  style="margin-top: 100px"  >
                <!--class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4 text-center"-->
                <div class="text-center">
                    <img  src="images/logo4.jpg" alt="" width="280" height="200" class="mb-3">
                </div>
                <form action="UpdateEmployee" method="Post" class="rounded bg-white shadow p-5" >              

                    <h3 class="text-dark fw-bolder fs-4 mb-2 text-center">Please edit employee data</h3>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Employee ID" name="employeeId" value="${Emp.getEmployeeId()}" readonly>
                        <label for="floatingInput">Employee ID</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="first name" name="firstName" value="${Emp.getFirstName()}">
                        <label for="floatingInput">First Name</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="last name" name="lastName" value="${Emp.getLastName()}">
                        <label for="floatingInput">Last Name</label>
                    </div>
                    <div class="form-floating">
                        <input type="email" class="form-control" id="floatingInput" placeholder="emailId" name="emailId" value="${Emp.getEmailId()}">
                        <label for="floatingInput">Email</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="pincode" name="pincode" value="${Emp.getPincode()}">
                        <label for="floatingInput">Pin Code</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="state" name="state" value="${Emp.getState()}">
                        <label for="floatingInput">State</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="city" name="city" value="${Emp.getCity()}">
                        <label for="floatingInput">City</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="phoneNumber" name="phoneNumber" value="${Emp.getPhoneNumber()}">
                        <label for="floatingInput">Phone</label>
                    </div>

                    <div class="form-floating">
                        <select name="gender" class="form-select" id="gender" required>
                            <option value="" hidden>Select Gender</option>
                            <option value="Male" <c:if test="${Emp.getGender().equalsIgnoreCase('Male')}">selected</c:if>>Male</option>  
                            <option value="Female" <c:if test="${Emp.getGender().equalsIgnoreCase('Female')}">selected</c:if>>Female</option>                        
                        </select>
                        <label for="floatingInput">Gender</label>
                    </div> 

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="age" name="age" value="${Emp.getAge()}">
                        <label for="floatingInput">Age</label>
                    </div>
<!--                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="aadhar" name="aadharNo" value="${Emp.getAadharNo()}">
                        <label for="floatingInput">Aadhar Number</label>
                    </div>-->

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Salary" name="salary" value="${Emp.getSalary()}">
                        <label for="floatingInput">Basic Salary</label>
                    </div>
                    <button class="btn btn-primary submit_btn w-100" type="submit">SAVE</button>
                    <a class="btn btn-danger submit_btn w-100 mt-2" href="showEmployee.jsp">Cancel</a>

                </form>
            </div>
                </section>
        </main>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="../../assets/js/vendor/popper.min.js"></script>
        <script src="../../dist/js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="../../assets/js/vendor/holder.min.js"></script>
    </body>
</html>
