<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ecommerceproject" user="root" password=""/>

    <sql:query dataSource="${dataSource}" var="reqClients" sql="SELECT count(*) as count  FROM clients where email = '${param.login}'" />
    	
<c:out value="${reqClients.rows[0]}"/>
<c:if test="${reqClients.rows[0].count==0}">
<sql:update dataSource="${dataSource}" var="updatedTable">
INSERT INTO clients (firstName,lastName,email,password,role,cart) VALUES (?, ?, ?, ?, ?, ?)
<sql:param value="${param.fName}" />
<sql:param value="${param.lName}" />
<sql:param value="${param.login}" />
<sql:param value="${param.pass}" />
<sql:param value="client"/>
<sql:param value=""/>
</sql:update>
</c:if>



