<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./signUp.css">
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
            <a href="Login.jsp"><img src="./Icons/Account.png" class="accountIcon" alt=""></a>
            <a href="Login.jsp" class="loginText">Login/SignUP</a>
        </div>
    </nav>

    <div class="welcomeContainer">
        <div class="welcomeSection">
            <h1 style=" margin-left: 650px; margin-top: -500px; position:absolute;">login/Signup</h1>
           <form action="addUser.jsp" method="POST">
            <table>
            	<tr>
            		<td>
            			<label style="margin-top: 50px;">firtName :</label>
            			<input type="text" name="fName" placeholder="firstName" class="emailInput">
            		</td>
      				<td>
      					 <label style="margin-top: 50px;">lastName :</label>
           				 <input type="text" name="lName" placeholder="lastName" class="emailInput">
      				</td>
            	</tr>
            	<tr>
            		<td>
            			 <p style="margin-top: 50px;">email :</p>
            <input type="email" name="login" placeholder="email" class="emailInput">
            		</td>
      				<td>
      					 <p style="margin-top: 50px;">password :</p>
            <input type="password" name="pass" placeholder="password" class="passInput"><br>
      				</td>
            	</tr>
            	<tr>
            		<td colspan="2">
            			            <input type="submit" name="submit" id="submit">
            			
            		</td>
            	</tr>
            </table>
                      
           </form>
        </div>
        <div class="welcomeImg">
            <img src="./Icons/Login.png" alt="" style="margin-top: 50px;">
        </div>

    </div>
</body>
</html>