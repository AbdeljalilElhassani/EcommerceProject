<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:remove var="id"/>
<c:set var="role" value="none" scope="session" />

<c:redirect url = "index.jsp"/>

