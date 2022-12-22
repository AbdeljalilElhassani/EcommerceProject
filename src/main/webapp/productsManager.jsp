<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
 if(session.getAttribute("role").equals("admin")){%>
<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ecommerceproject" user="root" password=""/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./productsManager.css">
</head>
<body>
    <section class="background-image">

    </section>
    <nav class="navbarContainer">
        <a href="index.jsp"><img class="logoIcon" src=".\Icons\Elhassani Store 1.png" alt=""></a>
        <div class="searchContainer"> 
            <input type="text" name="search" class="searchBar">
            <a href="#"><img src="./Icons/Search Icon.png" class="searchIcon" alt=""></a>
        </div>
        <div class="loginContainer">
            <a href="Clients.jsp"><img src="./Icons/Clients.png" class="accountIcon" alt=""></a>
            <a href="Clients.jsp" class="loginText">Clients</a>
        </div>
        <div class="loginContainer">
            <a href="logOut.jsp"><img src="./Icons/logOutIconBlack.png" class="accountIcon" alt=""></a>
            <a href="logOut.jsp" class="loginText">logout</a>
        </div>
    </nav>
    
    
    <sql:query var="reqClients" sql="SELECT * FROM products" />
    <TABLE border="1" cellpadding="4" cellspacing="0" class="clientsTable">
<TR> <td>id</td> <td>name</td> <td>price</td> <td>ram</td> <td>storage</td><td>camera</td><td>screen</td><td>picture</td> </TR><c:forEach var="row" items="${reqClients.rows}" >
<TR> <td><c:out value="${row.id}" /></td>
<td><c:out value="${row.name}" /></td>
<td><c:out value="${row.price}" /></td>
<td><c:out value="${row.ram}" /></td>
<td><c:out value="${row.storage}" /></td>
<td><c:out value="${row.camera}" /></td>
<td><c:out value="${row.screen}" /></td>
<td><img class="productPicture" src="<c:out value="${row.picture}" />"></img></td>

<td><a href="edit.jsp?id=<c:out value="${row.id}"/>&?type=product">Edit</a></td>
<td><a href="delete.jsp?id=<c:out value="${row.id}"/>&?type=product">Delete</a></td>
</TR>
</c:forEach>
</TABLE>
</body>
</html>
  <%}else{%>
 <%out.println(session.getAttribute("role")); %>
        	<h1>You don't have access !!</h1>
      
        	
  <%}%>