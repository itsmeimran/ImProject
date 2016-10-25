<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />
<jsp:include page="linking.jsp" />


<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${req}/home">eDevice</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="${req}/home">Home</a></li>
			<li><a href="${req}/about">About</a></li>
			<li><a href="${req}/contact">Contact</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown">Category <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${req}/viewall/mobile">Mobile</a></li>
					<li><a href="${req}/viewall/television">Television</a></li>
					<li><a href="${req}/viewall/airconditioner">Air Conditioner</a></li>
				</ul></li>

			<li><a href="${req}/viewall">View All</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="${req}/user/signup"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<!--  <li><a href="${req}/admin/product"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
					-->
			<li><a href="${req}/login"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
	</div>
</nav>





