package com.courier.model;

public class Price extends Customer {
	
	private double distPrice;
	private double weightPrice;

	public Price() {
		super();
	}
	
	public double getDistPrice() {
		return distPrice;
	}
	public void setDistPrice(double distance) {
		if (distance < 100) this.distPrice = 30;
		else if (distance >= 100 && distance < 500) this.distPrice = 50;
		else if (distance >= 500 && distance < 1000) this.distPrice = 100;
		else if (distance >= 1000 && distance < 2000) this.distPrice = 150;
		else if (distance >= 2000 && distance < 2500) this.distPrice = 250;
		else if (distance >= 2500 && distance < 3000) this.distPrice = 400;	
	}
	public double getWeightPrice() {
		return weightPrice;
	}
	public void setWeightPrice(double weight) {
		double weightPrice = 70;
		if(weight < 1) this.weightPrice = weightPrice;
		else {
			this.weightPrice = weight*weightPrice;
		}
		
	}
	
	

}
