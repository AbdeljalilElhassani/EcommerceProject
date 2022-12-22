<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ecommerceproject" user="root" password=""/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./products.css">
</head>
<body>
    <section class="background-image">

    </section>
    <nav class="navbarContainer">
        <a href="index.jsp"><img class="logoIcon" src="./Icons/Elhassani Store white.png" alt=""></a>
        <div class="searchContainer"> 
            <input type="text" name="search" class="searchBar">
            <a href="#"><img src="./Icons/searchIcon.png" class="searchIcon" alt=""></a>
        </div>
        <%
        if(session.getAttribute("id")==null){%>
        	 <div class="loginContainer">
            <a href="Login.jsp"><img src="./Icons/AccountWhite.png" class="accountIcon" alt=""></a>
            <a href="Login.jsp" class="loginText">Login/SignUP</a>
        </div>
        <%}else{%>
        	
        	<div class="loginContainer">
            <a href="Cart.jsp"><img src="./Icons/cartIconWhite.png" class="accountIcon" alt=""></a>
            <a href="Cart.jsp" class="loginText">Cart</a>
        </div>
        <div class="loginContainer">
            <a href="logOut.jsp"><img src="./Icons/logOutIcon.png" class="accountIcon" alt=""></a>
            <a href="logOut.jsp" class="loginText">logout</a>
        </div>
        <%}%>
        
        
    </nav>
    <div class="productsContainer">
        <sql:query var="reqClients" sql="SELECT * FROM products" />
    <table>
<c:forEach var="row" items="${reqClients.rows}" >
<tr>
                <td>
                    <div class="productContainer">
                        <a href="">
                            <img src="${row.picture}" class="product" alt="">
                            <p>${row.name}</p>
                            <p>${row.price}</p>
                            <a href="addToCart.jsp?id=${row.id}"><button class="addToCartBtn" style="margin-top: 10px;">add to cart</button></a>
                        </a>
                    </div>
                </td>
</tr>
</c:forEach>
        </table>
    </div>
</body>
</html>