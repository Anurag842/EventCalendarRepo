<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
tr:hover {background-color:#f5f5f5;}
body, html {
    height: 100%;
    margin: 0;
    font-family: Arial;
  }
</style>
</head>
<body>
<div align="center">
	<h1>View Clients</h1>
	<table border="1">
		<tr>
			<th>Client Id</th>
			<th>Client Name</th>
			<th>Project Name</th>
			<th>Agenda</th>
			<th>Arrival Date</th>
			<th>Departure Date</th>
			<th>View Itinerary</th>
			
		</tr>
		<c:forEach items="${clientList}" var="clients">	
			<tr>
				<td>${clients.clientId}</td>
				<td>${clients.clientName}</td>
				<td>${clients.projectName}</td>
				<td>${clients.agenda}</td>
				<td>${clients.arrivalDate}</td>
				<td>${clients.deptDate}</td>
				
				<td><a href="viewEvents/${clients.clientId}">View</a></td>
				
			</tr>
		</c:forEach>
	</table>
	</div>
</body>

</html>