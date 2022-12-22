<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ecommerceproject" user="root" password=""/>

<sql:update dataSource="${dataSource}" var="updatedTable">
DELETE FROM clients WHERE ID = ?
<sql:param value="${param.id}" />
</sql:update>

<c:redirect url = "Clients.jsp"/>



