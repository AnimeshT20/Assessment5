package com.courier.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.courier.dao.UtilDao;
import com.courier.model.CourierDetails;
import com.courier.model.Customer;
import com.courier.model.Price;


public class CustomerEntryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub    	
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	Customer cust = new Customer();
    	cust = (Customer) request.getSession().getAttribute("customer");
    	Price obj = new Price();
    	obj.setDistPrice(cust.getDistance());
    	obj.setWeightPrice(cust.getPackageWeight());
    	
    	CourierDetails pack = new CourierDetails();
    	pack.setTrackid(pack.generateTrackID());
    	pack.setPlacement(cust.getDate());
    	pack.setShipment(cust.getDistance());
    	pack.setDelivery(cust.getDistance());
    	pack.setAmount(obj.getDistPrice()+obj.getWeightPrice());
    	    	
    	try {
    		int status = UtilDao.trackDetails(pack);
    		if(status>0) {
    			response.sendRedirect("track.jsp");
    			
    		}else response.sendRedirect("displayCharge.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	
	}

}
