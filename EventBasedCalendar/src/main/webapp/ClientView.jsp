<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
				
				<td><a href="updateCategory/${clients.clientId}">View</a></td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>