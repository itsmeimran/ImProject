<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />
<jsp:include page="linking.jsp" />
<jsp:include page="header.jsp" />


<div class="panel pannel-default">

	<div class="panel-header">Product Form</div>
	<div class="panel-body">

		<form:form action="${req}/admin/insert" method="post" modelAttribute="product" enctype="multipart/form-data">
			<form:hidden path="id" />
			<!-- <div class="panel pannel-default"> -->
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
							   <td><form:hidden path="purl"/>
							   <form:input path="file" type="file" Class="form-control" placeholder="Select File" required="required"/>
							   <img src="${req}/resources/images/${product.purl}"/>
							   </td>
						</tr>
						
						<tr align="center">
							<td align="center"><input type="submit" value="Save" /></td>
							<td align="center"><input type="reset" value="Reset" /></td>
						</tr>
					</table>
		</form:form>
	</div>
</div>

<table class="table table-striped">
	<tr>
		<th>Product Id</th>
		<th>Product Name</th>
		<th>Category</th>
		<th>Supplier</th>
		<th>Product Price</th>
		<th>&#160;</th>
	</tr>

	<c:forEach items="${products}" var="product">
		<tr>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.category}</td>
			<td>${product.supplier}</td>
			<td>${product.price}</td>
			<td><a href="${req}/admin/view/${product.id}" class="btn btn-sm btn-primary">View</a>&#160;
			 <a	href="${req}/admin/delete/${product.id}" class="btn btn-sm btn-primary">Delete</a></td>
		</tr>
	</c:forEach>
</table>

