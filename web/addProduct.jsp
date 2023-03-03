<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Medicine - Pharmacy Management System</title>
        <link rel="stylesheet" href="css/normal.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="css/addProduct.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/icheck-bootstrap/3.0.1/icheck-bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/iCheck/1.0.2/icheck.min.js"></script>
        <script>
            $(document).ready(function () {
                $('input[type="checkbox"], input[type="radio"]').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue'
                });
            });
        </script>

    </head>
    <body>
        <header>
            <!-- <h1>Add Product</h1> -->
        </header>
        <main>
            <c:if test="${not empty Error}">
                <h3 class="text-center text-danger">${Error}</h3>
            </c:if>
            
            <form action="AddProduct" method="POST">

                <div class="Hero">
                <h1>Add Product</h1>

            </div>
                
                <div class="form-group last mb-2">
                    <label for="productName">Product Name</label>
                    <input type="text" class="form-control" placeholder="Product Name" name="productName" required>
                </div>   
                <div class="form-group last mb-2">
                    <label for="quantity">Quantity</label>
                    <input type="text" class="form-control" placeholder="Quantity" name="quantity" required>
                </div> 
                <div class="form-group last mb-2">
                    <label for="unitPrice">Price</label>
                    <input type="text" class="form-control" placeholder="Price" name="unitPrice" required>
                </div> 
                <div class="form-group last mb-2">
                    <label for="expiryDate">Expiry Date</label>
                    <input type="date" class="form-control" name="expiryDate" required>
                </div> 
                <div class="form-group last mb-2">
                    <label for="shelfNumber">Shelf Number</label>
                    <input type="text" class="form-control" placeholder="Shelf Number" name="shelfNumber" required>
                </div>
                <div class="container text-center ">
                    <button type="submit" class="btn py-2 btn-success w-25  mt-2">ADD</button>
                <a class="btn py-2 btn-danger w-25  mt-2" href="inventory.jsp">Cancel</a>
                </div>
            </form>
        </main>
        <!-- <footer>
                <p>&copy; 2023 Pharmacy Management System. All rights reserved.</p>
        </footer> -->
    </body>
</html>
