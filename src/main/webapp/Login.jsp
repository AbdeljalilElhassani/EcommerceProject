<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./login.css">
</head>
<body>
    <section class="background-image">

    </section>
    <nav class="navbarContainer">
        <a href="./index.jsp"><img class="logoIcon" src=".\Icons\Elhassani Store 1.png" alt=""></a>
        <div class="searchContainer"> 
            <input type="text" name="search" class="searchBar">
            <a href="#"><img src="./Icons/Search Icon.png" class="searchIcon" alt=""></a>
        </div>
        <div class="loginContainer">
            <a href="login.jsp"><img src="./Icons/Account.png" class="accountIcon" alt=""></a>
            <a href="login.jsp" class="loginText">Login/SignUP</a>
        </div>
    </nav>

    <div class="welcomeContainer">
        <div class="welcomeSection">
            <h1 style="margin-bottom: -10px; margin-left: 800px; margin-top: 100px;">login/Signup</h1>
            
           <form action="verify.jsp" method="POST">
            <p style="margin-top: 50px;">email :</p>
            <input type="email" name="login" placeholder="email" class="emailInput">
            <p>password :</p>
            <input type="password" name="password" placeholder="password" class="passInput"><br>
            <input type="submit" name="submit" id="submit">
            
           </form>
           <a style="color: white; text-decoration:none;" href="signUp.jsp">SignUp</a>
        </div>
        <div class="welcomeImg">
            <img src="./Icons/Login.png" alt="" style="margin-top: 50px;">
        </div>

    </div>
</body>
</html>