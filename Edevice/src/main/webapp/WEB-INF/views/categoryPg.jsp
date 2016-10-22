<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />
<jsp:include page="linking.jsp" />
<jsp:include page="header.jsp" />


<div class="panel pannel-default">

	<div class="panel-header">Product Form</div>
	<div class="panel-body">

		<form:form action="${req}/category/view" method="post"
			modelAttribute="product">
			<!--<form:hidden path="id" />-->
			<!-- <div class="panel pannel-default"> -->
			<table border="1" width="600" align="center">
				<tr>
					<td>Category Id</td>
					<td><form:input path="catid" /></td>
				</tr>
				<tr>
					<td>Category Name</td>
					<td><form:input path="catname" cssClass="form-control" /></td>
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
		<th>Category Id</th>
		<th>Category Name</th>

	</tr>

	<c:forEach items="${categories}" var="category">
		<tr>
			<td>${category.catid}</td>
			<td>${category.catname}</td>

			<td><a href="${req}/admin/view/${product.id}"
				class="btn btn-sm btn-primary">View</a>&#160; <a
				href="${req}/admin/delete/${product.id}"
				class="btn btn-sm btn-primary">Delete</a></td>
		</tr>
	</c:forEach>
</table>

