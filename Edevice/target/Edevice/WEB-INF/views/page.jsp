<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<spring:url var="css" value="/resources/css" />
<spring:url var="images" value="/resources/images" />
<spring:url var="js" value="/resources/js" />


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${title}</title>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="${css}/app.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	<!-- navigation -->
	<%@include file="./carousel.jsp" %>	

    <div class="container wrapper">
	
	
		<!-- Index page -->
		<c:if test="${ifUserHasClickedHome == true }">	
			<%@include file="index.jsp" %>
		</c:if>
		
		<!-- about page -->
		<c:if test="${ifUserHasClickedAbout == true }">		
			<%@include file="about.jsp" %>
		</c:if>

		<!-- contact page -->
		<c:if test="${ifUserHasClickedContact == true }">		
			<%@include file="contact.jsp" %>
		</c:if>

		<!-- view all product page -->
		<c:if test="${ifUserHasClickedAllProducts == true }">		
			<%@include file="viewall.jsp" %>
		</c:if>
		
		
		<!-- view admin product page -->
		<c:if test="${ifAdminClickedProduct == true }">		
			<%@include file="adminProduct.jsp" %>
		</c:if>
		


    </div><!-- /.container -->
    
    <!-- This is the footer -->
    <%@include file="./footer.jsp" %>


  </body>
</html>
