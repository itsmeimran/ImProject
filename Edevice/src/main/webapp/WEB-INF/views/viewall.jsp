<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="linking.jsp" />
<title>Home</title>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />
<%--For getting images start--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url value="/resources/images/product" var="productImages" />
<%--For getting images ends--%>
</head>

<body>
	<div class="container" id="main"
		style="width: 100%; background-color: grey">


		<jsp:include page="header.jsp" />

		<jsp:include page="panel4.jsp" />




		<!-- <div class="panel pannel-default">


	<div class="panel-header">Product Form</div>
	<div class="panel-body">

		<form:form action="${req}/admin/insert" method="post" modelAttribute="product">
			<form:hidden path="id" />
			<div class="panel pannel-default">
					<table border="1" width="600" align="center">
						<tr>
							<td></td>
							<td><form:hidden path="id" /></td>
						</tr>
						<tr>
							<td>Product Name</td>
							<td><form:input path="name" cssClass="form-control" /></td>
						</tr>
						<tr>
							<td>Product Category</td>
							<td><form:input path="category" cssClass="form-control" /></td>
						</tr>
						<tr>
							<td>Supplier</td>
							<td><form:input path="supplier" cssClass="form-control" /></td>
						</tr>


						<tr>
							<td>Product Price</td>
							<td><form:input path="price" cssClass="form-control" /></td>
						</tr>
						<tr>
							   <td><form:hidden path="purl"/></td>
						</tr>
						
						<tr align="center">
							<td align="center"><input type="submit" value="Save" /></td>
							<td align="center"><input type="reset" value="Reset" /></td>
						</tr>
					</table>
		</form:form>
	</div>
</div>

 -->
		<div class="container" id="main"
			style="width: 100%; background-color: grey">
			<table class="table table-striped">
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Supplier</th>
					<th>Product Price</th>
					<th>Product Images</th>
					<th>&#160;</th>
				</tr>

				<c:forEach items="${productData}" var="product">
					<tr>


						<td><strong style="font-size: 20px;">${product.id} </strong></td>
						<td><strong style="font-size: 20px;"><a
								href="${req}/singlepro/${product.id} " style="color: black;">${product.name}</a></strong></td>
						<td><strong style="font-size: 20px;"><a
								href="${req}/singlepro/${product.id}" style="color: black;">${product.category}</strong></td>
						<td><strong style="font-size: 20px;">${product.supplier}</strong></td>
						<td><strong style="font-size: 20px;"><a
								href="${req}/singlepro/${product.id}" style="color: black;">${product.price}</strong></td>
						<td><a href="${req}/singlepro/${product.id} "><img
								width="80px" height="80px"
								src="${productImages}/${product.id}.jpg" alt="${product.name}" /></a></td>


						<td><a href="${req}/singlepro/${product.id}"
							class="btn btn-sm btn-primary">View</a>&#160; <!--
			 <a	href="${req}/admin/delete/${product.id}" class="btn btn-sm btn-primary">Delete</a></td>
			  -->
					</tr>
				</c:forEach>
			</table>
		</div>