<%-- 
    Document   : signup
    Created on : 23-Feb-2023, 1:20:34 pm
    Author     : RITWIK SHAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/signupStyle.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    </head>


    <body>
        <div class="container register">
            <div class="row">
                <div class="col-md-3 register-left">
                    <img src="images/clipart1192900.png" alt="xx"/>
                    <h3>Welcome</h3>
                    <p>You are now a member of MedEasy family!</p>
                    <!--                    <a href="">Login</a><br/>-->
                </div>
                <div class="col-md-9 register-right">                    
                    <div class="tab-content" id="myTabContent">
                        <form action="AddEmployee" method="POST">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Apply as a Employee</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" value="" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="password" placeholder="Password *" value="" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="confirm_password" placeholder="Confirm Password *" value="" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="number" class="form-control"  placeholder="Age *" value="" required/>
                                        </div>

                                        <div class="form-group">
                                            <div class="maxl">
                                                Gender*: 
                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
                                                           value="Female" />
                                                    <label class="form-check-label" for="femaleGender">Female</label>
                                                </div>

                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
                                                           value="Male" />
                                                    <label class="form-check-label" for="maleGender">Male</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *" value="" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Pincode *" value="" required/>
                                        </div>

                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <input type="text" class="form-control" placeholder="State *" value="" required />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <input type="text" class="form-control" placeholder="City *" value="" required/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Aadhar Number *" value="" required/>
                                        </div>

                                        <!--<input type="submit" class="btnRegister"  value="Register"/>-->
                                        <button type="submit" class="btnRegister pure-button pure-button-primary">Register</button>

                                        <!--<input type="submit" class="btnRegister"  value="Register"/>-->

                                        <!--<div class="text-center text-muted text-uppercase mb-3">OR</div>-->

                                        <a href="#" class="btn btn-light login_with w-auto">
                                            <img src="images/google-icon.png" alt="G" class="img-fluid me-4">Continue with Google
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        <script src="js/validatePassword/validatePassword.js"></script>
    </body>


</html>
