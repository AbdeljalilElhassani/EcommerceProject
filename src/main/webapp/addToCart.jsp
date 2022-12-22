<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ecommerceproject" user="root" password=""/>


        <sql:query dataSource="${dataSource}" var="reqClients" sql="SELECT * FROM clients where id =2" />
		
		<c:set var="products" value="${reqClients.rows[0].cart}" />
	

<sql:update dataSource="${dataSource}" var="updatedTable">
UPDATE clients SET cart='${param.id},${reqClients.rows[0].cart}' WHERE id = 2
</sql:update>

<c:redirect url="Products.jsp"/>