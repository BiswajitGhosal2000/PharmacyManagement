<%-- 
    Document   : homeAdmin
    Created on : 21-Feb-2023, 2:02:03 pm
    Author     : lokesh
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

        <title>Cover Template for Bootstrap</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/cover/">

        <!-- Bootstrap core CSS -->
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>

        <link rel="stylesheet" href="css/homeAdmin.css">
        
    </head>

    <body class="text-center">
        <jsp:include page="menuAdmin.jsp"></jsp:include>

        <main id="changeableArea">
            <div class="quote">
                <h1 class="title">Welcome to MedEasy</h1>
            </div>
        </main>

        <script>
            function change() {
                $.ajax({
                    url: method,
                    data: {
                        claimId: data
                    },
                                    success: function (responseText) {
                        console.log(responseText);
                                        $("#changeableArea").html(responseText);
                                    }
                });
            }
        </script>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="../../assets/js/vendor/popper.min.js"></script>
        <script src="../../dist/js/bootstrap.min.js"></script>
    </body>
</html>
