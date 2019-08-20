<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="HomeFunctions.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>

<button class="tablink" onclick="openPage('Add', this, 'blue')" id="defaultOpen">Add client Visit</button>
<button class="tablink" onclick="openPage('View', this, 'blue')" >View client visit</button>

<div id="Add" class="tabcontent">
        <div class="container">
                <form action="" method="post">
                  <div class="row">
                    <div class="col-25">
                      <label for="fname">Client Name</label>
                    </div>
                  <div class="col-75">
                      <input type="text" id="cname" name="clientname" placeholder="client name..">
                  </div>
                  </div>
                  <div class="row">
                    <div class="col-25">
                      <label for="lname">Project Name</label>
                    </div>
                      <div class="col-75">
                      <input type="text" id="pname" name="projectname" placeholder="project name..">
                      </div>
                  </div>
                  <div class="row">
                    <div class="col-25">
                      <label >Start date</label>
                    </div>
                    <div class="col-75">
                          <input type="date" name="startdate">
                    </div>
                  </div>
                  <div class="row">
                          <div class="col-25">
                            <label >End date</label>
                          </div>
                          <div class="col-75">
                                <input type="date" name="enddate">
                          </div>
                  </div>

                  <div class="row">
                      <fieldset>
                          <legend>Event Planner</legend>
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
   
     								 <li><a tabindex="-1" href="#">Meal</a></li>
     								 <li><a tabindex="-1" href="#">Hotel</a></li>
      
      								<li class="dropdown-submenu">
        						<a class="test" tabindex="-1" href="#">Cab <span class="caret"></span></a>
        						<ul class="dropdown-menu">
         							 <li><a tabindex="-1" href="#">Airport to Hotel</a></li>
          							<li><a tabindex="-1" href="#">Hotel to Airport</a></li>
         							 <li><a tabindex="-1" href="#">Hotel to Office</a></li>
         							 <li><a tabindex="-1" href="#">Office to Hotel</a></li>
            
       							 </ul>
     							 	</li>
      
      								<li class="dropdown-submenu">
        							<a class="test" tabindex="-1" href="#">Meeting <span class="caret"></span></a>
        							<ul class="dropdown-menu">
          									<li><a tabindex="-1" href="#">Concalve</a></li>
         									 <li><a tabindex="-1" href="#">Focus</a></li>
          									<li><a tabindex="-1" href="#">Aspire</a></li>
            
        							</ul>
     								 </li>
      
    						</ul>
  </div>
                                	
                          </div>
                      </div>
                      <div class="row">
                        <div class="col-25">
                            <label>Event start time</label>
                        </div>
                        <div class="col-75">
                          <input type="datetime-local" name="starttime">
                       </div>
                      </div>
                      <div class="row">
                        <div class="col-25">
                            <label>Event end time</label>
                        </div>
                        <div class="col-75">
                          <input type="datetime-local" name="endtime">
                       </div>
                      </div>
                      </fieldset>
                  </div>
                  <br>
                  <div class="row" align="center">
                    <input type="submit" value="Submit" >
                  </div>
                </form>
      </div>
              
</div>

<div id="View" class="tabcontent">
  <h3>View visits</h3>
  <p>Schedule</p> 
</div>
<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>

   
</body>
</html> 