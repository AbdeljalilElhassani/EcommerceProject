<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ecommerceproject" user="root" password=""/>

    <sql:query var="reqClients" sql="SELECT * FROM clients where email = '${param.login}'" />


<c:set var="login" value="${reqClients.rows[0].password}"/>
<c:set var="pass" value="${param.password}"/>


<c:if test="${login==pass}">
	<c:if test="${reqClients.rows[0].role=='admin'}">
		<c:set var="fullName" value="${reqClients.rows[0].firstName}+${reqClients.rows[0].lastName}" scope="session" />
		<c:set var="id" value="${reqClients.rows[0].ID}" scope="session" />
		<c:set var="role" value="${reqClients.rows[0].role}" scope="session" />
		<c:redirect url = "Clients.jsp"/>
	</c:if>
<c:if test="${reqClients.rows[0].role=='client'}">
		<c:set var="fullName" value="${reqClients.rows[0].firstName}+${reqClients.rows[0].lastName}" scope="session" />
		<c:set var="id" value="${reqClients.rows[0].ID}" scope="session" />
		<c:redirect url = "Products.jsp"/>
	</c:if>
</c:if>

<c:if test="${login!=pass}">
<c:set var="check" value="bad" scope="session" />
<c:redirect url = "Login.jsp"/>
</c:if>

