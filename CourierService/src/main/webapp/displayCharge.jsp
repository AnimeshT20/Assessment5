<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.Date,java.time.*,com.courier.model.Price,com.courier.controller.CustomerEntryController,com.courier.model.Customer"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Amount Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">  
<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<style type="text/css">
table {
   margin: auto;
   margin-top: 105px;
   width: 30% !important; 
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
<%
String name =  request.getParameter("name");
long contact = Long.parseLong( request.getParameter("contact"));
String source = request.getParameter("source");
String dest = request.getParameter("dest");
double distance = Double.parseDouble(request.getParameter("distance"));
double weight = Double.parseDouble(request.getParameter("weight"));
LocalDate place = LocalDate.parse(request.getParameter("place"));

Customer cust = new Customer();
cust.setCustomerName(name);
cust.setContact(contact);
cust.setSource(source);
cust.setDest(dest);
cust.setDistance(distance);
cust.setPackageWeight(weight);
cust.setDate(place);

request.getSession().setAttribute("customer", cust);

Price obj = new Price();
obj.setDistPrice(distance);
obj.setWeightPrice(weight);
%>
<form action="CustomerEntryController" method="post">
	<div class="table-responsive">
		<table class="table styled-table" id="trans">
	          <thead><tr><th scope="col">Total Payable Amount</th></tr></thead>
	      	  <tbody>
	      		<tr><td scope="col" >Name : <%=name%></td></tr>	
	      		<tr><td scope="col" >Source : <%=source%></td></tr>				
				<tr><td scope="col" >Destination : <%=dest%></td></tr>				
				<tr><td scope="col" >Distance : <%=distance%> kms</td></tr>				
				<tr><td scope="col" >Weight : <%=weight%> kgs</td></tr>				
	      		<tr><td scope="col" >Total Amount : <%=obj.getDistPrice()+obj.getWeightPrice()%></td></tr>					      		
			   </tbody>
			   <tfoot ><tr>
              <td class="text-right row">
    				<div class="btn-group" role="group">
        					<div class="col-md-6 custom">
								<a href="customerentry.jsp"><button type="button" class="btn btn-sm btn-danger btn-block">Cancel</button></a>       						 
							</div>
       				 <div class="col-md-6 custom">
							<button type="submit" class="btn btn-sm btn-success btn-block">Proceed</button>      		
					  </div>
  				  </div>
			</td>
			   </tr></tfoot>
     	</table>
   </div>
  </form>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src='https://code.jquery.com/jquery-3.2.1.slim.min.js' integrity='sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN' crossorigin='anonymous'></script>
<script src='https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js' ></script>

<body>

</body>
</html>