
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" /> 
<link rel="stylesheet" href="${css}/bootstrap.css">
<!--  <link rel="stylesheet" href="${css}/bootstrap.map.css">-->
<link rel="stylesheet" href="${css}/style.css">
	
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.js"></script>
<script src="${js}/Script.js"></script>