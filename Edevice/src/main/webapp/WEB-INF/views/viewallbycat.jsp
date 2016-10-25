<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />
<%--For getting images start--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url value="/resources/images/product" var="productImages" />
<%--For getting images ends--%>


<jsp:include page="linking.jsp" />
<jsp:include page="header.jsp" />




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
				<td><strong style="font-size: 20px;"><a href="${req}/singlepro" style="color: black;">${product.name}</a></strong></td>
				<td><strong style="font-size: 20px;"><a href="${req}/singlepro" style="color: black;">${product.category}</strong></td>
				<td><strong style="font-size: 20px;">${product.supplier}</strong></td>
				<td><strong style="font-size: 20px;"><a href="${req}/singlepro/${product.id}" style="color: black;">${product.price}</strong></td>
				<td ><a href="${req}/singlepro/${product.id} " ><img width="80px" height="80px" src="${productImages}/${product.id}.jpg" 
					alt="${product.name}" /></a></td>

				<!-- 
				<td><a href="${req}/admin/view/${product.id}" class="btn btn-sm btn-primary">View</a>&#160;need to add a view button
			 <a	href="${req}/admin/delete/${product.id}" class="btn btn-sm btn-primary">Delete</a></td>
			  -->
			</tr>
		</c:forEach>
	</table>
</div>

