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
    <link rel="stylesheet" href="./edit.css">
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
            <a href="productsManager.jsp"><img src="./Icons/marketIcon.png" class="accountIcon" alt=""></a>
            <a href="productsManager.jsp" class="loginText">Products</a>
        </div>
        <div class="loginContainer">
            <a href="logOut.jsp"><img src="./Icons/logOutIconBlack.png" class="accountIcon" alt=""></a>
            <a href="logOut.jsp" class="loginText">logout</a>
        </div>
    </nav>
    
    <%if(request.getParameter("type")=="client"){ %>
    
    <sql:query var="reqClients" sql="SELECT * FROM clients where id = ${param.id}" />
    <form action="modify.jsp" method="" >
    
    <TABLE border="1" cellpadding="4" cellspacing="0" class="clientsTable">
<TR> 
	<td>id</td> 
	<td>nom</td> 
	<td>prenom</td> 
	<td>email</td> 
	<td>password</td>
	<td>role</td> 
</TR>
<c:forEach var="row" items="${reqClients.rows}" >
	<TR rowspan="2"> 
		<td>
			<input type="text" name="id" value="<c:out value="${row.ID}"/> " />
		</td>
 		<td>
 			<input type="text" name="fName" value="<c:out value="${row.firstName}" />"/>
 		</td>
 		<td>
 			<input type="text" name="lName" value="<c:out value="${row.lastName}" />"/>
 		</td>
		 <td>
		 	<input type="text" name="email" value="<c:out value="${row.email}" />"/>
		 </td>
 		<td>
 			<input type="text" name="pass" value="<c:out value="${row.password}" />"/>
 		</td>
 		<td>
 			<input type="text" name="role" value="<c:out value="${row.role}" />"/>
 		</td>
	</TR>
	<tr >    <td align="center" colspan="6">        <input type="submit" name="submit" id="submit"></td>
	</tr>
</c:forEach>
</TABLE>
    </form>

</body>
</html>
<%}else{ %>
<sql:query var="reqClients" sql="SELECT * FROM products where id = ${param.id}" />
    <form action="test.jsp" method="" >
    
    <TABLE border="1" cellpadding="4" cellspacing="0" class="clientsTable" style="top:40%;">

<c:forEach var="row" items="${reqClients.rows}" >
	<TR rowspan="2"> 
		<td>
		id</td><td> 
			<input type="text" name="id" value="<c:out value="${row.id}"/> " />
		</td>
	</TR>
	<TR>
 		<td>
 			name</td><td> 
 		
 			<input type="text" name="name" value="<c:out value="${row.name}" />"/>
 		</td>
 	</TR>
 	<TR>
 		<td>
 			description</td><td>
 		
 			<input type="text" name="description" value="<c:out value="${row.description}" />"/>
 		</td>
 	</TR>
 	<TR>
		 <td>
		 	ram</td><td> 
		 
		 	<input type="text" name="ram" value="<c:out value="${row.ram}" />"/>
		 </td>
	</TR>
	<TR>
 		<td>
 			storage</td><td>
 		
 			<input type="text" name="storage" value="<c:out value="${row.storage}" />"/>
 		</td>
 	</TR>
 	<TR>
 		<td>
 			camera</td><td>
 		
 			<input type="text" name="camera" value="<c:out value="${row.camera}" />"/>
 		</td>
 	</TR>
 	<TR>
 		<td>
 			screen</td><td>
 		
 			<input type="text" name="screen" value="<c:out value="${row.screen}" />"/>
 		</td>
 	</TR>
 	<TR>
 		<td>
 			picture</td><td> 
 			<input type="file" name="file" value="<c:out value="${row.picture}" />"/>
 		</td>
	</TR>
	<tr border="none">    <td align="center" colspan="6">        <input type="submit" name="submit" id="submit"></td>
	</tr>
</c:forEach>
</TABLE>
    </form>

</body>
</html>
<%} %>
  <%}else{%>
 <%out.println(session.getAttribute("role")); %>
        	<h1>You don't have access !!</h1>
      
        	
  <%}%>