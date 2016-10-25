
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="req" value="${pageContext.request.contextPath}" />

  <div class="row flex">
    <div class="col-xs-3">
      <div class="panel panel-default " >
       <div class="panel-heading" style="background-color: grey ;font-size: 30px" ><strong>Mobiles</strong></div>
       <div class="panel-body" style="background-color: grey">
         <img style="height: 150px ; width: 350px" src="resources/images/iphone/iphone5.jpeg" 
							alt="images" />
 </div>
 <!-- <a href="#" class="btn btn-info" role="button">Link Button</a> -->
     <div class="panel-footer"><a href="${req}/viewall/mobile" class="btn btn-default btn-block" role=button style="background-color: #43B2F7"><strong style="font-size: 20px">Show More</strong></a></div>
   <!--   <div class="panel-footer"><button class="btn btn-default btn-block" style="background-color: #43B2F7">View</button></div>  --> 
     </div>
    </div><!--/col-->
    <div class="col-xs-3">
      <div class="panel panel-default">
       <div class="panel-heading" style="background-color: grey;font-size: 30px"><strong >Air Conditioner</strong></div>
       <div class="panel-body" style="background-color: grey">
        <img  style="height: 150px ; width: 350px"src="resources/images/ac/im.jpg" 
							alt="images" />
       </div>
      <div class="panel-footer"><a href="${req}/viewall/airconditioner" class="btn btn-default btn-block" role=button style="background-color: #43B2F7"><strong style="font-size: 20px">Show More</strong></a></div> 
     </div>
    </div><!--/col-->
    <div class="col-xs-3">
      <div class="panel panel-default">
       <div class="panel-heading" style="background-color: grey;font-size: 30px"><strong>Televisions</strong></div>
       <div class="panel-body" style="background-color: grey">
        <img style="height: 150px ; width: 350px" src="resources/images/tv/sony/u_10124884.jpg" 
							alt="images" />
       </div>
       <div class="panel-footer"><a href="${req}/viewall/television" class="btn btn-default btn-block" role=button style="background-color: #43B2F7"><strong style="font-size: 20px">Show More</strong></a></div> 
     </div>
    </div><!--/col-->
    <div class="col-xs-3">
      <div class="panel panel-default">
       <div class="panel-heading" style="background-color: grey;font-size: 30px"><strong>View All</strong></div>
       <div class="panel-body" style="background-color: grey">
         <img style="height:150px ; width: 410px" src="resources/images/edevices-logo.jpg"  
							alt="images" />
       </div>
        <div class="panel-footer"><a href="${req}/viewall" class="btn btn-default btn-block" role=button style="background-color: #43B2F7"><strong style="font-size: 20px">Show More</strong></a></div> 
     </div>
    </div><!--/col-->
  </div>
