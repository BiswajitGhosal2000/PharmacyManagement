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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>

            function show(aadharNo, i,empId)
            {
                $.ajax({
                                        url: 'ApiCall',
                    type: 'post',
                                        data: {
                                                'aadharNo': aadharNo,
                                                'index': i
                                        },
                                        success: function (responseText) {
                        $("#modalText").html(responseText);
                    }                                        
                                });
                
                $("#eid").val(empId);
            }
            function reject()
            {
                $("#modalForm").attr('action', 'Reject');
                $("#eid").val(empId);
            }


        </script>
        <script defer src="js/script.js"></script>
    </head>
    <body>
        <jsp:include page="menuAdmin.jsp"></jsp:include>
            <header>
                <div class="container">
                    <!--        Table-->
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead class="bg-warning">
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
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%int i = 0;%>
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
                                <td>
                                    <button class="btn btn-sm btn-success" data-toggle="modal" onclick="show(${emp.getAadharNo()},<%=i%>,${emp.getEmployeeId()})" data-target="#exampleModalCenter">Verify</button>
                                    <%i++;%>
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
                            <form id="modalForm" class="rounded bg-white shadow p-3" action="Approve" method="POST">

                                <h3 class="text-dark fw-bolder fs-2 mb-4 text-center">Verify Details</h3>

                                <div id="modalText">
                                </div>
                                
                                <div class="form-floating mb-1">
                                    <input type="number" class="form-control" id="floatingInput" min="1000" name="salary">
                                    <label for="floatingInput">Salary</label>
                                </div>
                                
                                <input type="number" class="form-control" id="eid" name="employeeId" hidden="true">
                                
                                <button type="submit" class="btn btn-primary submit_btn w-100 my-4">Approve</button>
                                <button type="submit" onclick="reject()" class="btn btn-danger submit_btn w-100 my-2">Reject</button>
                            </form>
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
