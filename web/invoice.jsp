<%-- 
    Document   : invoice
    Created on : 02-Mar-2023, 8:58:40 pm
    Author     : RITWIK SHAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INVOICE Page</title>
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/styleInvoice.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="col-md-12">
                <div class="invoice">
                    <!-- begin invoice-company -->
                    <div class="invoice-company text-inverse f-w-600">
                        <span class="pull-right hidden-print">
<!--                            <a href="javascript:;" class="btn btn-sm btn-white m-b-10 p-l-5"><i class="fa fa-file t-plus-1 text-danger fa-fw fa-lg"></i> Export as PDF</a>-->
                            <a href="javascript:;" onclick="window.print()" class="btn btn-sm btn-white m-b-10 p-l-5"><i class="fa fa-print t-plus-1 fa-fw fa-lg"></i> Print</a>
                        </span>
                        MEDEASY PHARMACY
                    </div>
                    <!-- end invoice-company -->
                    <!-- begin invoice-header -->
                    <div class="invoice-header">
<!--                        <div class="invoice-from">
                            <small>from</small>
                            <address class="m-t-5 m-b-5">
                                <strong class="text-inverse">MedEasy</strong><br>
                                9A Lalit Mitra Lane<br>
                                Kolkata - 700004<br>
                                Phone: +91 900 7366 986<br>
                                Fax: +91 900 7366 986
                            </address>
                        </div>-->
                        <div class="invoice-to">
<!--                            <small>to</small>-->
                            <address class="m-t-5 m-b-5">
                                <strong class="text-inverse">${Customer.getCustomerName()}</strong><br>
                                ${Customer.getAddress()}<br>
                                Phone: ${Customer.getPhoneNumber()}<br>
                                Email: ${Customer.getEmailId()}<br>
                                <strong>Prescribed by:</strong> ${Order.getDoctorName()}
                            </address>
                        </div>
                        <div class="invoice-date">
                            <small>Invoice Date</small>
                            <div class="date text-inverse m-t-5">${Order.getOrderDateTime()}</div>
                            <div class="invoice-detail">
                                ${Order.getOrderId()}<br>
                                Services Product
                            </div>
                        </div>
                    </div>
                    <!-- end invoice-header -->
                    <!-- begin invoice-content -->
                    <div class="invoice-content">
                        <!-- begin table-responsive -->
                        <div class="table-responsive">
                            <table class="table table-invoice">
                                <thead>
                                    <tr>
                                        <th>PRODUCT NAMES</th>
                                        <th class="text-center" width="10%">RATE</th>
                                        <th class="text-center" width="10%">QUANTITY</th>
                                        <th class="text-right" width="20%">COST</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="product" items="${ProductList}">
                                    <tr>
                                        <td>
                                            <span class="text-inverse">${product.getProductName()}</span><br>
                                            <small>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id sagittis arcu.</small>
                                        </td>
                                        <td class="text-center">₹${product.getUnitPrice()}</td>
                                        <td class="text-center">${product.getQuantity()}</td>
                                        <td class="text-right">₹${product.getPrice()}</td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- end table-responsive -->
                        <!-- begin invoice-price -->
                        <div class="invoice-price">
                            <div class="invoice-price-left">
                                <div class="invoice-price-row">
                                    <div class="sub-price">
                                        <small>SUBTOTAL</small>
                                        <span class="text-inverse">₹4,500.00</span>
                                    </div>
                                    <div class="sub-price">
                                        <i class="fa fa-minus text-muted"></i>
                                    </div>
                                    <div class="sub-price">
                                        <small>DISCOUNT (10%)</small>
                                        <span class="text-inverse">₹450.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="invoice-price-right">
                                <small>TOTAL</small> <span class="f-w-600">₹4050.00</span>
                            </div>
                        </div>
                        <!-- end invoice-price -->
                    </div>
                    <!-- end invoice-content -->
                    <!-- begin invoice-note -->
                    <div class="invoice-note">
                        * Make all cheques payable to MedEasy<br>
                        * Payment is due within 30 days<br>
                        * If you have any questions concerning this invoice, contact  Ritwik Shaw, 8777053689, shawritwik2@gmail.com
                    </div>
                    <!-- end invoice-note -->
                    <!-- begin invoice-footer -->
                    <div class="invoice-footer">
                        <p class="text-center m-b-5 f-w-600">
                            THANK YOU FOR YOUR BUSINESS
                        </p>
                        <p class="text-center">
                            <span class="m-r-10"><i class="fa fa-fw fa-lg fa-globe"></i> medeasypharmacy.com</span>
                            <span class="m-r-10"><i class="fa fa-fw fa-lg fa-phone-volume"></i> T:016-18192302</span>
                            <span class="m-r-10"><i class="fa fa-fw fa-lg fa-envelope"></i> contact@MedEasy.com</span>
                        </p>
                    </div>
                    <!-- end invoice-footer -->
                </div>
            </div>
        </div>
    </body>
</html>
