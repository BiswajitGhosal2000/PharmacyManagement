<%-- 
    Document   : employeeMenu
    Created on : 27-Feb-2023, 3:08:12 am
    Author     : sandeep kamila
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Medical Form</title>
        <link rel="stylesheet" href="css/homeEmployee.css"/>
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.13.2/css/dataTables.bootstrap5.min.css" rel="stylesheet">
        <script defer src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
        <script defer src="https://cdn.datatables.net/1.13.2/js/dataTables.bootstrap5.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">

    </head>
    <body class="">
        <jsp:include page="menuEmployee.jsp"></jsp:include>
            <main id="changeableArea">
                <div class="card-group">
                    <div id="first" class="card">
                        <div class="card-header">
                        <h3 class="text-center mb-2">Customer Details </h3>
                    </div>
                        <div class="card-body">
                            <form>
                                <div class="full-input">
                                    <label for="phoneNumber">Phone number:</label>
                                    <input type="tel" id="phoneNumber"  name="phoneNumber" placeholder="Enter phone number" onchange ="FetchCustomer('GetCustomer')" value="${Customer.getPhoneNumber()}" pattern="[126789][0-9]{9}"  required >
                            </div>
                            <div class="full-input">
                                <label for="customerName">Customer Name:</label>
                                <input type="text" id="customerName" name="customerName" placeholder="Enter Customer Name" value="${Customer.getCustomerName()}" required>
                            </div>
                            <div class="full-input">
                                <label for="age">Age:</label>
                                <input type="text" id="age" name="age" placeholder="Enter age" value="${Customer.getAge()}" required >
                            </div>
                            <div class="full-input">
                                <label for="gender">Gender:</label>
                                <input type="text" id="gender" name="gender" placeholder="Enter address" value="${Customer.getGender()}" required> 
                            </div>
                            <div class="full-input">
                                <label for="emailId">Email Id:</label>
                                <input type="email" id="emailId" name="emailId" placeholder="Enter Email address" value="${Customer.getEmailId()}" required> 
                            </div>
                            <div class="full-input">
                                <label for="address">Address:</label>
                                <input type="text" id="address" name="address" placeholder="Enter address" value="${Customer.getAddress()}" required>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        <c:choose>
                            <c:when test="${not empty Customer.getCustomerName()}">
                                <a class="btn btn-success text-white w-25" onclick="SaveCustomer('UpdateCustomer')">Update</a>
                            </c:when>
                            <c:otherwise>
                                <a class="btn btn-warning text-white w-25" onclick="SaveCustomer('AddCustomer')">Save</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
                <div class="card" id="second">
                    <div class="card-header">
                        <h3 class="text-center mb-2">Product Details </h3>
                    </div>
                    <div class="card-body">
                        <form>
                            <input type="text" id="employeeName" name="employeeName" value="${Employee.getFirstName()}${Employee.getLastName()}" hidden required>
                            <div class="full-input">
                                <label for="doctorName">Doctor name:</label>
                                <input type="text" id="doctorName" name="doctorName" placeholder="Enter doctor name" value="${Order.getDoctorName()}" onchange="SaveOrder()" required>
                            </div>
                            <div class="full-input">
                                <label for="productNumber">Medicine:</label>
                                <select id="productNumber" name="productNumber" required onchange="getProduct()">
                                    <option value="" hidden>Select a medicine</option>
                                    <c:forEach var="inventory" items="${InventoryList}">
                                        <option value="${inventory.getProductNumber()}" <c:if test="${inventory.getProductNumber()} == ${Product.getProductNumber()}" >selected</c:if>>${inventory.getProductName()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="full-input" >
                                <label for="productName">Product Name:</label>
                                <input type="text" id="productName" name="productName" value="${Product.getProductName()}" readonly required />
                            </div>
                            <div class="full-input">
                                <label for="quantity">Quantity:</label>
                                <input type="number" id="quantity" name="quantity" min="1" required />
                            </div>
                            <div class="full-input">
                                <label for="unitPrice">Unit Price:</label>
                                <input type="text" id="unitPrice" name="unitPrice" value="${Product.getUnitPrice()}" readonly required>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        <input type="text" id="orderId" name="orderId" value="${Order.getOrderId()}" hidden required>
                        <a class="btn btn-warning text-black" onclick="AddProduct()">Add Product</a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="text-center mb-2">Order Summary</h3>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped table-bordered">
                            <thead class="bg-warning">
                                <tr>
                                    <th>Product Name</th>
                                    <th>Quantity</th>
                                    <th>Unit Price</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="product" items="${ProductList}">
                                    <tr>
                                        <td>${product.getProductName()}</td>
                                        <td>${product.getQuantity()}</td>
                                        <td>${product.getUnitPrice()}</td>
                                        <td>${product.getPrice()}</td>
                                        <td></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer text-center">
                        <a class="btn btn-success text-white w-50" href="invoice.jsp" >Generate Invoice</a>
                    </div>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script>
                            function FetchCustomer(method) {
                                //alert('Fetch');
                                $.ajax({
                                    url: method,
                                    type: 'POST',
                                    data: {
                                        'phoneNumber': $("#phoneNumber").val()
                                    },
                                    success: function (responseText) {
                                        $("#first").load(responseText);
                                        location.reload();
                                    }
                                });
                            }
                            function SaveCustomer(method) {
                                //alert("AddCustomer");
                                $.ajax({
                                    url: method,
                                    type: 'post',
                                    data: {
                                        'phoneNumber': $("#phoneNumber").val(),
                                        'customerName': $("#customerName").val(),
                                        'age': $("#age").val(),
                                        'gender': $("#gender").val(),
                                        'emailId': $("#emailId").val(),
                                        'address': $("#address").val()
                                    },
                                    success: function () {
                                        //alert("responseText");
                                        //$("").load(responseText);
                                        location.reload();
                                    }
                                });
                            }
                            function SaveOrder() {
                                alert("Saveorder");
                                $.ajax({
                                    url: 'AddOrder',
                                    type: 'POST',
                                    data: {
                                        'phoneNumber': $("#phoneNumber").val(),
                                        'customerName': $("#customerName").val(),
                                        'address': $("#address").val(),
                                        'doctorName': $("#doctorName").val(),
                                        'employeeName': $("#employeeName").val()
                                    },
                                    success: function (responseText) {
                                        alert(responseText);
                                        //$("#second").load(responseText);
                                        location.reload();
                                    }
                                });
                            }
                            function getProduct() {
                                //alert($("#productNumber").val());
                                $.ajax({
                                    url: 'GetProduct',
                                    type: 'post',
                                    data: {
                                        'productNumber': $("#productNumber").val()
                                    },
                                    success: function (responseText) {
                                        //alert(responseText);
                                        $("#second").load(responseText);
                                        location.reload();
                                    }
                                });
                            }
                            function AddProduct() {
                                //alert("SaveCustomer");
                                $.ajax({
                                    url: 'AddProduct',
                                    type: 'post',
                                    data: {
                                        'productName': $("#productName").val(),
                                        'quantity': $("#quantity").val(),
                                        'unitPrice': $("#unitPrice").val(),
                                        'orderId': $("#orderId").val()
                                    },
                                    success: function (responseText) {
                                        //alert("responseText");
                                        $("#second").load(responseText);
                                        location.reload();
                                    }
                                });
                            }
            </script>
        </main>
        <!--<script src="js/employeeMenu.js"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
