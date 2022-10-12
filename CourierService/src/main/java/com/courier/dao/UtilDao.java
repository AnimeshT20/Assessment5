package com.courier.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.courier.model.CourierDetails;
import com.courier.model.Customer;

public class UtilDao {
		
		public static Connection getConnection() {
			Connection connection = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/courier","root","password");
			} catch (Exception e) {
				System.out.println(e);
			}
			return connection;
		}
		
		
		public static int entryUserDetails(Customer cust) throws SQLException {
			String sql= "insert into customer(cusname, phone, address, deliver, package, packagedate) values (?,?,?,?,?,?,NOW())";
			PreparedStatement stmt = getConnection().prepareStatement(sql);
			stmt.setString(1, cust.getCustomerName());
			stmt.setLong(2, cust.getContact());
			stmt.setString(3, cust.getSource());
			stmt.setString(4, cust.getDest());
			stmt.setDouble(5, cust.getPackageWeight());
			
			return stmt.executeUpdate(sql);		
		}
		
		public static int trackDetails(CourierDetails courier) throws SQLException {
			String sql= "insert into courierdetails values ('" + courier.getTrackid() + "','" + courier.getPlacement() +"','" +courier.getShipment() + "','" + courier.getDelivery() + "'," + courier.getAmount() + ")";
			PreparedStatement stmt = getConnection().prepareStatement(sql);		
			return stmt.executeUpdate(sql);		
		}
		
		public static ResultSet showCourierDetails() throws SQLException {
			String sql="Select * from courierdetails";
			Statement stmt = getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			return rs;	
		}
		
		
	
}
