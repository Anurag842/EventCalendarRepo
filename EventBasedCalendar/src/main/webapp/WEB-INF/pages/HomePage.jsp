<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    
     <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <%--the below two link is used to connect javasciprt and css file in the spring mvc flow and also above include taglib core--%>
 <%--Within the webapp creates resources folder which contain two folder one is css for .css file and js for javascript files --%>
<link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/HomeFunctions.js" />"></script>
</head>
<body>

<button class="tablink" onclick="openPage('Add', this, 'blue')" id="defaultOpen">Client Itinerary</button>
<button class="tablink" onclick="openPage('View', this, 'blue');window.location.href='http://localhost:5248/EventBasedCalendar/view'" id="viewEvent">View Client Itinerary</button>

<div id="Add" class="tabcontent">
        <div class="container">
                <form:form action="${pageContext.request.contextPath}/submitOnDb" method="post"  modelAttribute="cObj" onsubmit="return alert('Successfully Added Client Itinerary'); return false;">
                
                  <div class="row">
                    <div class="col-25">
                      <label for="fname">Client Name</label>
                    </div>
                  <div class="col-75">
                      <form:input path="clientName" type="text" id="cname" name="clientname" placeholder="client name.."/>
                  </div>
                  </div>
                  <div class="row">
                    <div class="col-25">
                      <label for="lname">Project Name</label>
                    </div>
                      <div class="col-75">
                      <form:input path="projectName" type="text" id="pname" name="projectname" placeholder="project name.."/>
                      </div>
                  </div>
                  <div class="row">
                    <div class="col-25">
                      <label >Arrival date</label>
                    </div>
                    <div class="col-75">
                          <form:input path="arrivalDate" type="date" name="startdate"/>
                    </div>
                  </div>
                  <div class="row">
                          <div class="col-25">
                            <label >End date</label>
                          </div>
                          <div class="col-75">
                                <form:input path="deptDate" type="date" name="enddate"/>
                          </div>
                  </div>
                  <div class="row">
                    <div class="col-25">
                      <label for="agenda">Agenda</label>
                    </div>
                      <div class="col-75">
                      <form:input path="agenda" type="text" id="agenda" name="agenda" placeholder="Enter Agenda"/>
                      </div>
                  </div>
					<hr></hr>
                 
                        <div class="row">
                           <div class="col-25">
                                <label >Event</label>
                          </div> 
                          <!-- Our div for dropdown box starts here -->
                            <div class="col-75">
                          	<div class="dropdown">
    							<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Select
    							<span class="caret"></span></button>
    							<ul class="dropdown-menu">
   									
   									<li class="dropdown-submenu">
        						<a class="test" tabindex="-1" href="#">Meal <span class="caret"></span></a>
        						<ul class="dropdown-menu">
         							 <li><a class="test2" tabindex="-1" href="#">Unit 1, Cafeteria</a></li>
          							<li><a class="test2" tabindex="-1" href="#">Unit 2, Cafeteria</a></li>
       							 </ul>
     							 	</li>
     								
     								<li class="dropdown-submenu">
        						<a class="test" tabindex="-1" href="#">Hotel <span class="caret"></span></a>
        						<ul class="dropdown-menu">
         							 <li><a class="test2"  tabindex="-1" href="#">FabSunshine, Greater Noida</a></li>
          							<li><a class="test2"  tabindex="-1" href="#">Treebo,Near Advant Park</a></li>
          							<li><a class="test2" tabindex="-1" href="#">Other</a></li>
       							 </ul>
     							 	</li>
      								<li class="dropdown-submenu">
        						<a class="test" tabindex="-1" href="#">Cab <span class="caret"></span></a>
        						<ul class="dropdown-menu">
         							 <li><a class="test2" tabindex="-1" href="#">Airport to Hotel</a></li>
          							<li><a class="test2"  tabindex="-1" href="#">Hotel to Airport</a></li>
         							 <li><a class="test2"  tabindex="-1" href="#">Hotel to Office</a></li>
         							 <li><a class="test2" tabindex="-1" href="#">Office to Hotel</a></li>
            
       							 </ul>
     							 	</li>
      
      								<li class="dropdown-submenu">
        							<a class="test" tabindex="-1" href="#">Meeting <span class="caret"></span></a>
        							<ul class="dropdown-menu">
          									<li><a class="test2"  tabindex="-1" href="#">Conclave</a></li>
         									 <li><a class="test2" tabindex="-1" href="#">Focus</a></li>
          									<li><a class="test2" tabindex="-1" href="#">Aspire</a></li>
            
        							</ul>
     								 </li>
      
    						</ul>
  </div>
                                	
                          </div>
                      </div>
                      <div class="row">
                        <div class="col-25">
                            <label>Event start date And time</label>
                        </div>
                
                        <div class="col-75">
                          <input type="datetime-local" name="starttime" id="starttime">
                       </div>
                      </div>
                      <div class="row">
                        <div class="col-25">
                            <label>Event end  date And time</label>
                        </div>
                        <div class="col-75">
                          <input type="datetime-local" name="endtime" id="endtime">
                       </div>
                   
                     
                  </div>
                  <br>
                  <div class="row" align="center">
                    <input type="submit" value="Add Event" id="event">
                  </div>
                  <hr></hr>
                  <div class="col-25">
                  <label>View Events</label>
                  </div>
                   <textarea id="textarea" rows="4" cols="140">

					</textarea>
					<br>
                  <div class="row" align="center">
                    <input type="submit" value="Submit" >
                  </div>
                </form:form>
                
      </div>
     
              
</div>

<div id="View" class="tabcontent">
  <div align="center">
	<h1>View Clients</h1>
	<table >
		<tr>
			<th>Client Id</th>
			<th>Client Name</th>
			<th>Project Name</th>
			
			<th>Arrival Date</th>
			<th>Departure Date</th>
			<th>Agenda</th>
			<th>View Itinerary</th>
			
		</tr>
		<c:forEach items="${clientList}" var="clients">	
			<tr>
				<td>${clients.clientId}</td>
				<td>${clients.clientName}</td>
				<td>${clients.projectName}</td>
				
				<td>${clients.arrivalDate}</td>
				<td>${clients.deptDate}</td>
				<td>${clients.agenda}</td>
				
				<td><a href="viewEvents/${clients.clientId}">View</a></td>
				
			</tr>
		</c:forEach>
	</table>
	</div> 
</div>
<script>


//Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();





  $('.dropdown-submenu a.test').on("click", function(e){
	var event1=($(this).text());
	 sessionStorage.setItem("event1",$(this).text());
	 
	 
	 
    $(this).next('ul').toggle();
    e.stopPropagation();
    //e.preventDefault();
  });
  $('.dropdown-menu a.test2').on("click", function(e){
	  
	  // $("#textarea").val(event1+" "+($(this).text()));
	   sessionStorage.setItem("event1",sessionStorage.getItem("event1")+" "+($(this).text()));
	   
	
  });
  
  
 $('#starttime').focusout(function(e){
	 var str1 = $('#starttime').val();
	 console.log("str1 = "+str1);
	 sessionStorage.setItem("starttime",str1); 
 });
 
 $('#endtime').focusout(function(e){
	 var str2 = $('#endtime').val();
	 console.log("str2 = "+str2);
	 sessionStorage.setItem("endtime",str2); 
 });

 function SetFields() {
	 if(($("#textarea").val())!=null)
		{
		var textdata=$("#textarea").val();
		sessionStorage.setItem("text",textdata);
		}
	    
	}
 $("#event").click(function(){
	SetFields();
	//if(sessionStorage.getItem("text")!=null){
	$("#textarea").val(sessionStorage.getItem("text")+"\n"+sessionStorage.getItem("event1") +" ,"+sessionStorage.getItem("starttime") +" ,"+
			sessionStorage.getItem("endtime"));
	
	/*else {
		$("#textarea").val(sessionStorage.getItem("event1") +" ,"+sessionStorage.getItem("starttime") +" ,"+
				sessionStorage.getItem("endtime")+"\n");
		
	}*/
	 
	ClearFields();
	return false;
	
});
function ClearFields() {
	if(($("#textarea").val())!=null)
		{
		var textdata=$("#textarea").val();
		sessionStorage.setItem("text",textdata);
		}
	
    $("#starttime").val("");
    $("#endtime").val("");
    
}





</script>

   
</body>
</html> 