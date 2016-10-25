<html><head>
<style>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap.map.css">
<link rel="stylesheet" href="resources/css/style.css">
	

<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/Script.js"></script>

</style>
</head>
<body>
<jsp:include page="header.jsp"/>


<div class="container">
	<!-- container start -->
	<div class="row">
		<!-- row Start -->

		<div class="col-lg-3">
			<!-- empty column for space from right -->
		</div>
		<div class="col-lg-6">
			<!-- col Start -->
			<article role="login">
				<h3 class="text-center">
					<i class="fa fa-lock"></i>NEW USER
				</h3>

				<form:form method="POST" action="${cp}/admin/login"
					modelAttribute="user">

					<div class="form-group">
						<form:hidden path="uid" />
					</div>

					<div class="form-group">
						<form:input path="name" class="form-control"
							placeholder="User Name" required="required" />
						<form:errors path="name" style="color:red;" />
					</div>
					<div class="form-group">
						<form:input path="email" type="email" class="form-control"
							placeholder="User email" required="required" />
						<form:errors path="email" style="color:red;" />
					</div>
					<div class="form-group">
						<form:input path="password" type="password" class="form-control"
							placeholder="User Password" required="required" />
						<form:errors path="password" style="color:red;" />
					</div>

					<div class="form-group">
						<form:hidden path="enabled" value="true" />
						<form:errors path="enabled" style="color:red;" />
					</div>

					<div class="form-group">
						<form:hidden path="role" value="ROLE_USER" />
						<form:errors path="role" style="color:red;" />
					</div>


					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox"> Please accept the
								terms and conditions to proceed with your request.
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success btn-block"
							value="REGISTER">
					</div>

				</form:form>



			</article>
		</div>
		<!-- col over -->

		<div class="col-lg-3">
			<!-- empty column for space from left -->
		</div>

	</div>
	<!-- Row over -->

</div>
<!-- Contain over -->
</body>
</html>