package com.courier.model;

import java.time.LocalDate;
import java.util.Random;

public class CourierDetails {
	private String trackid;
	private LocalDate placement;
	private LocalDate shipment;
	private LocalDate delivery;
	private double amount;

	public String getTrackid() {
		return trackid;
	}
	public void setTrackid(String trackid) {
		this.trackid = trackid;
	}
	public LocalDate getPlacement() {
		return placement;
	}
	public void setPlacement(LocalDate placement) {
		this.placement = placement;
	}
	public LocalDate getShipment() {
		return shipment;
	}
	public void setShipment(double distance) {
		LocalDate place = this.getPlacement();
		if (distance < 50) this.shipment = place;
		else if (distance >= 50 && distance < 500) this.shipment = place.plusDays(1);
		else if (distance >= 500 && distance < 1000) this.shipment = place.plusDays(2);
		else if (distance >= 1000 && distance < 1500) this.shipment = place.plusDays(3);
		else if (distance >= 1500 && distance < 2500) this.shipment = place.plusDays(4);
		else if (distance >= 2500 && distance < 4000) this.shipment = place.plusDays(5);
		else this.shipment = place.plusDays(6);
		System.out.println(this.shipment);
	}
	
	public LocalDate getDelivery() {
		return delivery;
	}
	public void setDelivery(double distance) {
		LocalDate place = this.getShipment();
		this.delivery = place.plusDays(2);
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String generateTrackID() throws NumberFormatException
	{
		final String intial = "#12345";
		Random r = new Random();
		String trackno = String.valueOf(r.nextInt(89999)+10000);
		String trackId  = intial + trackno;
		
		return trackId;
	}

}
