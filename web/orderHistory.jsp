<%-- 
    Document   : orderHistory
    Created on : 26-Feb-2023, 11:49:13 pm
    Author     : Biswajit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order History Pharmacy management</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

        <!-- Bootstrap core CSS -->
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">

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
    <body>
        <jsp:include page="menuAdmin.jsp"></jsp:include>
        <main>
            <div class="container">
                <table class="table table-bordered table-striped text-center " id="inventoryTable">
                    <thead class="bg-info">
                        <c:if test="${not empty OrderMsg}">
                            <c:out value="${OrderMsg}"/>
                        </c:if>
                        <tr>
                            <th>Order Id</th>
                            <th>Customer Name</th>
                            <th>Order Date Time</th>
                            <th>Phone Number</th>
                            <th>Doctor Name</th>
                            <th>Total Price</th>
                            <th>Employee Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="order" items="${OrderList}">   
                            <tr>

                                <td>${order.getOrderId()}</td>
                                <td>${order.getCustomerName()}</td>
                                <td>${order.getOrderDateTime()}</td>
                                <td>${order.getPhoneNumber()}</td>
                                <td>${order.getDoctorName()}</td>
                                <td>${order.getTotalPrice()}</td>
                                <td>${order.getEmployeeName()}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <script src =  "js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#inventoryTable').DataTable();
            });
        </script>
        </main>
    </body>
</html>
