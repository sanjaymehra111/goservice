package com.serviceonway.model;

import lombok.Data;

@Data
public class AdminServiceModel {
	
	String id;
	String maker;
	String model;
	String service;
	String charges;
	String date;
	
	public AdminServiceModel(){}

}
