<!-- start changing here 
<title>Single Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />
</head>
<body>
<changing ends here -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home</title>


<%@include file="linking.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<spring:url value="/resources/images/product" var="productImages" />
<%--For getting images ends--%>
</head>

<body>
	<div class="container" id="main"
		style="width: 100%; background-color: grey">


		<jsp:include page="header.jsp" />
		<div class="row">
			<%@include file="panel4.jsp" %>
			<div class="row">
				<div class="col-sm-4" style="background-color: grey;">
					<div class="container">
						<div class="panel panel-default " style="height: 600px;width: 450px; border: none;">
							<div class="panel-heading"
								style="background-color: grey; font-size: 30px">
								<strong style="font-size: 20px; color: white;">More Information</strong>
							</div>
							<div class="panel-body" style="background-color: grey;height=400px ;width=400px;  border: none;">
								<td><img alt=""
									src="${productImages}/${product.id}.jpg" 
									height="400ppx" width="400px" /></td>
							</div>
							<div class="panel-footer">
								<a href="${req}/viewall" class="btn btn-default btn-block"
									role=button style="background-color: #43B2F7;"><strong
									style="font-size: 20px">BUY NOW</strong></a> <a
									href="${req}/cart/view" class="btn btn-default btn-block"
									role=button style="background-color: #43B2F7;"><strong
									style="font-size: 20px">ADD TO CART</strong></a>
							</div>
						</div>

					</div>
					<div class="row"></div>
				</div>
				<div class="col-sm-8" style="background-color: grey;">
				<div class="row">
				<h3 style="color: white">Features and Specification</h3>
				</div>
				<div class="row">
				<h2>Details</h2>
				
				</div>
					<div class="row" style="color: white">
				<p> Important Note
We highly recommend that you get the product installed by the<b>  brand/eDevice</b> authorized service engineers to prevent the warranty from getting void.To Avail 2 Year Free Extended Warranty, SMS EW to <b> 9681872717 </b>(on or before 31st October 2016), Micromax will send a confirmation SMS to you.Post confirmation SMS, Micromax will call you within 24/48hrs for additional details (Name, Address, Registered Mobile No., LED TV Model Number, TV Serial Number, Date of Purchase, Order ID, Bill No.)You will then receive a Unique Customer Extended Warranty ID via your registered mobile number.Terms & Conditions on the 1year Warranty Card are applicable on the extended warranty   </p>
				<p>
				<h2>${product.name}</h2>
				</p>
				<p>
				<h2>${product.supplier}</h2>
				</p>
				<p>
				<h2> Price : Rs ${product.price}0</h2>
				</p>
				</div>
				
				</div>
			</div>
		</div>

</div>
</body>
</html>