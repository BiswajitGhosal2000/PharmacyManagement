<%-- 
    Document   : inventory
    Created on : 24-Feb-2023, 12:24:18 pm
    Author     : Biswajit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory Pharmacy management</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">
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
    <body>
        <main>
            <div class="jumbotron">
                <table class="table table-bordered table-striped text-center " id="inventoryTable">
                    <thead class="bg-warning">
                        <c:if test="${not empty ProductMsg}">
                            <c:out value="${ProductMsg}"/>
                        </c:if>
                        <tr>
                            <th>Product Number</th>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Unit Price</th>
                            <th>Expiry Date</th>
                            <th>Shelf Number</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="product" items="${Products}">   
                            <tr>

                                <td>${product.getProductNumber()}</td>
                                <td>${product.getProductName()}</td>
                                <td>${product.getQuantity()}</td>
                                <td>${product.getUnitPrice()}</td>
                                <td>${product.getexpiryDate()}</td>
                                <td>${product.getShelfNumber()}</td>
                                <td>
                                    <a href="doProductEdit?productNumber=${product.getProductNumber()}" class=" text-decoration-none">
                                        <button class="w-20 btn btn-sm btn-info text-center"><i class="bi bi-pencil-square"></i></button>
                                    </a>
                                </td>
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
