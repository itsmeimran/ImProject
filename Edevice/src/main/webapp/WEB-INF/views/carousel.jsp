
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />

<div class="container-fluid" style="height: 500px;"  >
	<div class="row">
		<div class="col-lg-12">
			<div class="carousel slide" id="carousel-729274" data-interval=2000 >

				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-ride="carousel"
						data-target="#carousel-729274"></li>
					<li data-slide-to="1" data-target="#carousel-729274"></li>
					<li data-slide-to="2" data-target="#carousel-729274"></li>
				</ol>
				<div class="carousel-inner" >
					<div class="item active">
						<img style="height: 500px; width: 100%"
							alt="Carousel Bootstrap First" src="resources/images/samsung/Galaxy-J2-SamMobile_015.jpg" />

						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img style="height: 500px; width: 100%"
							alt="Carousel Bootstrap Second" src="resources/images/dell/Dell-comp.jpg" />
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img style="height: 500px; width: 100%"
							alt="Carousel Bootstrap Third" src="resources/images/iphone/iphone4-5.jpg" />
						<div class="carousel-caption"></div>
					</div>
				</div>
				<a class="left carousel-control" data-target="#carousel-729274"
					data-slide="prev"><span
					class="glyphicon glyphicon-chevron-left"></span></a> <a
					class="right carousel-control" data-target="#carousel-729274"
					data-slide="next"><span
					class="glyphicon glyphicon-chevron-right"></span></a>

			</div>
		</div>
	</div>
</div>



