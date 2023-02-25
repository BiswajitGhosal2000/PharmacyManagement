<%-- 
    Document   : VerifyEmployee
    Created on : 22-Feb-2023, 2:18:27 pm
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify Employee</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.13.2/css/dataTables.bootstrap5.min.css" rel="stylesheet">
        <link href="css/verify-employee.css" rel="stylesheet">

        <script defer src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script defer src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
        <script defer src="https://cdn.datatables.net/1.13.2/js/dataTables.bootstrap5.min.js"></script>
        <script defer src="js/script.js"></script>
    </head>
    <body>
        <header>
            <div class="container p-5">
                <!--        Table-->
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Employee Id</th>
                            <th>Aadhar No</th>
                            <th>Email Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>City</th>
                            <th>State</th>
                            <th>Pin Code</th>
                            <th>Gender</th>
                            <th>Phone Number</th>
                            <th>Age</th>
                            <th>Aadhar No</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach var="emp" items="${EmpList}">
                            <tr>
                                <td>${emp.getEmployeeId()}</td>
                                <td>${emp.getAadharNo()}</td>
                                <td>${emp.getEmailId()}</td>
                                <td>${emp.getFirstName()}</td>
                                <td>${emp.getLastName()}</td>
                                <td>${emp.getCity()}</td>
                                <td>${emp.getState()}</td>
                                <td>${emp.getPincode()}</td>
                                <td>${emp.getGender()}</td>
                                <td>${emp.getPhoneNumber()}</td>
                                <td>${emp.getAge()}</td>
                                <td>${emp.getAadharNo()}</td>
                                <td>
                                    <a style="text-decoration: none;" href='#'>
                                        <button class="btn btn-sm btn-success" data-toggle="modal" data-target="#exampleModalCenter">Verify</button>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>

                </table>
        </header>
        <!--        Table End-->

        <!--Modal Start-->


        <main role="main" >
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">

                        <div class="modal-body" style="background-color: #e0feff">

                            <!--BODY-->

                            <button type="button" class="close mx-2 float-end" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <form class="rounded bg-white shadow p-3">

                                <h3 class="text-dark fw-bolder fs-2 mb-4 text-center">Verify Details</h3>

                                <div class="container">
                                    <div class="row">
                                        <div class="col fw-normal text-muted mb-4">
                                            Name: <span class="text-primary fw-bold text-decoration-none">Pratik Biswas</span>
                                        </div>
                                        <div class="col fw-normal text-muted mb-4">
                                            API Name: <span class="text-primary fw-bold text-decoration-none">Pratik Biswas</span>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col fw-normal text-muted mb-4">
                                            Gender: <span class="text-primary fw-bold text-decoration-none">Male</span>
                                        </div>
                                        <div class="col fw-normal text-muted mb-4">
                                            API Gender: <span class="text-primary fw-bold text-decoration-none">Male</span>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col fw-normal text-muted mb-4">
                                            Address: <span class="text-primary fw-bold text-decoration-none">Lalit lane</span>
                                        </div>
                                        <div class="col fw-normal text-muted mb-4">
                                            API Address: <span class="text-primary fw-bold text-decoration-none">Lalit lane</span>
                                        </div>
                                    </div>

                                </div>

                                <div class="form-floating mb-1">
                                    <input type="number" class="form-control" id="floatingInput" placeholder="name@example.com">
                                    <label for="floatingInput">Salary</label>
                                </div>

                                <button type="submit" class="btn btn-primary submit_btn w-100 my-4">Submit</button>

                            </form>

                        </div>

                    </div>
                </div>
            </div>
        </main>


        <!--Modal End-->

    </div>
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
</body>
</html>
