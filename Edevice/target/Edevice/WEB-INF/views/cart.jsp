<!DOCTYPE html>
<html lang="en">
<head>
<title>Cart Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<a href="tohome">I am in Shipping Page</a>
	<div class="container">
		<h2>Cart Details</h2>
		<p>Summary</p>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Cart Id</th>
					<th>Cart Item Id</th>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

			</tbody>
		</table>
	</div>
<!-- start -->

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
				<td><strong style="font-size: 20px;"><a href="${req}/singlepro/${product.id} " style="color: black;">${product.name}</a></strong></td>
				<td><strong style="font-size: 20px;"><a href="${req}/singlepro/${product.id}" style="color: black;">${product.category}</strong></td>
				<td><strong style="font-size: 20px;">${product.supplier}</strong></td>
				<td><strong style="font-size: 20px;"><a href="${req}/singlepro/${product.id}" style="color: black;">${product.price}</strong></td>
				<td ><a href="${req}/singlepro/${product.id} " ><img width="80px" height="80px" src="${productImages}/${product.id}.jpg" 
					alt="${product.name}" /></a></td>

				 
				<td><a href="${req}/viewall" class="btn btn-sm btn-primary">Continue for shopping</a>&#160;
			<!--	<td><a href="${req}/singlepro/${product.id}" class="btn btn-sm btn-primary">Buy</a>&#160;
				
			 <a	href="${req}/admin/delete/${product.id}" class="btn btn-sm btn-primary">Delete</a></td>
			  -->
			</tr>
		</c:forEach>
	</table>
</div>

<!-- start -->
</body>
</html>

