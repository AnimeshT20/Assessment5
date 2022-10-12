<%@page import="com.mysql.cj.util.Util"%>
<%@page import="com.courier.dao.UtilDao"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Track Order Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">  
<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<style type="text/css">
table {
   margin: auto;
   margin-top: 105px;
   width: 60% !important; 
}
.custom {
    padding-right: 2px;
    padding-left: 2px;
}
.styled-table {
    border-collapse: separate;
    border-spacing:  0 1em;
    font-size: 18px;
	font-family: "Times New Roman", Times, serif;
    min-width: 400px;
}
.styled-table thead tr ,tfoot tr {
    
    background-color:rgba(0, 0, 0, 0.35); 
    font-size: 25px;  
    text-align: center;
    border-bottom: 2px solid #000000;    
}
.styled-table th, .styled-table td {
    padding: 10px 15px;
}
.styled-table tbody tr {
    background-color:rgba(0, 0, 0, 0.35); 
    color: #ffffff;
		
	font-weight: bold;
    text-align: center;
    border-bottom: 2px solid #000000;
    box-shadow: 0 0 20px rgba(0,0,0,0.25)
}

</style>
</head>
<body>
<%
ResultSet rs = UtilDao.showCourierDetails();

%>
<div class="table-responsive">
		<table class="table styled-table" id="trans">
		<thead>
	      		<tr>
					<th scope="col" >Track ID</th>
					<th scope="col" >Order Placement Date</th>
					<th scope="col" >Shipment Date</th>
					<th scope="col" >Delivery Date</th>
					<th scope="col" >Amount</th>
				</tr>
				</thead>
			<tbody>
	      	  <%while(rs.next()){%>
					<tr>
						<th scope='row'><%=rs.getString(1)%></th>
						<td> <%=rs.getDate(2)%></td>
						<td> <%=rs.getDate(3)%> </td>
						<td> <%=rs.getDate(4)%> </td>
						<td> <%=rs.getDouble(5)%> </td>
					</tr>
					<%} %>
			 </tbody>	
     	</table>
   </div>


</body>
</html>