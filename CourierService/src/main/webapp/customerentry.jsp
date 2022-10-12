<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.courier.controller.CustomerEntryController" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" hreF="font-awesome/css/font-awesome.min.css">
<style type="text/css">

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8;
}
.profile-button {
    background: rgb(99, 39, 120);
    box-shadow: none;
    border: none;
}
.profile-button:hover {
    background: #682773
}
.profile-button:focus {
    background: #682773;
    box-shadow: none;
}
.profile-button:active {
    background: #682773;
    box-shadow: none;
}

.back:hover {
    color: #682773;
    cursor: pointer;
}

.form-label {
    font-size: 13px;
}
.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8;
}
.error{
    font-size: 12px;
    color:red;

}
.success{
    font-size: 27px;
    color:green;
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8;
}
</style>
<title>Customer Entry Page</title>
</head>
<body>

<form action="displayCharge.jsp" method="post">
	<div class="container rounded bg-light mt-5 mb-5">
    <div class="row justify-content-left">
        <div class="col-md-4 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"> <h1 class="text-right">Booking Details</h1>
			</span><span class="text-black-50">Register Customer</span><span> </span></div>
        </div>
        <div class="col-md-5 border-left ">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Name</label><input type="text" name = "name" class="form-control" placeholder="full name" value="" required="required"></div>
                    <div class="col-md-6"><label class="labels">Contact</label><input type="text" name="contact" class="form-control" value="" placeholder="contact number" required="required" pattern="[6-9][0-9]{9}" maxlength=10 ></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12 pb-3"><label class="labels">Source</label><input type="text" name="source" class="form-control" placeholder="enter pickup location" value="" required="required"></div>
                    <div class="col-md-12 pb-3"><label class="labels">Destination</label><input type="text" name="dest" class="form-control" placeholder="re-enter delivery location" value="" required="required"></div>
                    <div class="col-md-12 pb-3"><label class="labels">Distance</label><input type="number" name="distance" class="form-control" placeholder="enter distance(in kms)" value="" required="required"></div>
                    <div class="col-md-12"><label class="labels">Package Weight</label><input type="number" name="weight" class="form-control" placeholder="enter weight(in kgs)"  min=0 value="" required="required"></div>

                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Placement Date</label><input type="text" name="place" class="form-control" placeholder="placement" value="<%=LocalDate.now()%>" readonly="readonly"></div>
                </div>
                	<div class="pt-4 md-4 text-center"><input type ="submit" value="Check Payable Amount" class="btn btn-lg btn-block btn-dark profile-button"></div>
      	 	</div>
    	</div>
	</div>
	</div>
</form>
<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js" integrity="sha512-BkpSL20WETFylMrcirBahHfSnY++H2O1W+UnEEO4yNIl+jI2+zowyoGJpbtk6bx97fBXf++WJHSSK2MV4ghPcg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src='https://code.jquery.com/jquery-3.2.1.slim.min.js' integrity='sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN' crossorigin='anonymous'></script>

</body>
</html>
