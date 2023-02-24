<%-- 
    Document   : googleAuth
    Created on : 24-Feb-2023, 1:47:40 pm
    Author     : RITWIK SHAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="google-signin-client_id" content="593846765826-tt4voce5dbvolfl0e7e3tulhrirhq4te.apps.googleusercontent.com">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/googleAuth.css">
        <title>Login with Google</title>
    </head>
    
    
    <body>
        <h2 class="m-5">Sign in using google</h2>
        <div class="g-signin2" data-onsuccess="onSignIn"></div>
        <div class="data">
            <p>Name</p>
            <p id="alert alert-success"></p>
            <p>Profile Pic</p>
            <img id="image" class="rounded-circle" width="100" height="100" />
            <p>Email</p>
            <p id="email"> </p>
            <button type="button" class="btn btn-danger" onclick="signOut()">SIGN OUT</button>
        </div>
        
        
        
        <script src="js/googleAuth.js"></script>
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    </body>
</html>
