<%-- 
    Document   : homeEmployee
    Created on : 23-Feb-2023, 10:48:38 am
    Author     : Biswajit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="home page for employee">
        <meta name="author" content="Biswajit Ghosal">
        <link rel="icon" href="">

        <title>Pharmacy management Home Employee</title>


        <!-- Bootstrap core CSS -->
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
    </head>

    <body class="text-center">

        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow sticky-top">
            <h5 class="my-0 mr-md-auto font-weight-normal">Med-Easy</h5>
            <nav class="my-2 my-md-0 mr-md-3 float-start">

            </nav>
            <a class="btn btn-outline-primary" href="#">Sign up</a>
        </div>
        <main>
            <div class="row align-items-md-stretch">
                <div class="col-md-6">
                    <div class="h-100 p-1 w-100 text-white bg-dark rounded-3">
                        <form action="AddUser" method="POST">
                            <div class="floatingInput">
                                <label>Customer Phone No</label>
                                <input class="form-control" type="text" name="phoneNumber" id="phoneNumber" placeholder="phoneNumber" autofocus>
                            </div>
                            <div class="form-floating">
                                <label>Customer Name</label>
                                <input type="text" name="customerName" id="customerName" placeholder="customerName" >
                            </div>
                            <div class="form-floating">
                                <label>Customer email Id </label>
                                <input type="email" name="emailId" id="emailId" placeholder="emailId">
                            </div>
                            <div class="form-floating">
                                <label>Customer doctor Name</label>
                                <input type="text" name="doctorName" id="doctorName" placeholder="doctorName">
                            </div>
                            <div class="form-floating">
                                <label>Customer Age</label>
                                <input type="number" name="age" id="age" placeholder="age">
                            </div>
                            <div class="form-floating">
                                <label>Customer address</label>
                                <input type="text" name="address" id="address" placeholder="address">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="h-100 p-1 text-white bg-dark rounded-3">
                        <form action="AddUser" method="POST">
                            <div class="form-floating">
                                <label>Customer Phone No</label>
                                <input type="text" name="medicine" id="medicine" placeholder="medicine">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </main>
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script>window.jQuery || document.write('<script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/jquery-slim.min.js"><\/script>');</script>
        <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/popper.min.js"></script>
        <script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>
        <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/holder.min.js"></script>
        <script>
            Holder.addTheme('thumb', {
                bg: '#55595c',
                fg: '#eceeef',
                text: 'Thumbnail'
            });
        </script>
    </body>
</html>

