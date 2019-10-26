package com.goservice.model;

import lombok.Data;

@Data
public class ProviderServiceModel {
	
	String service_id;
	String provider_id;
	String shop_name;
	String contact; 
	String email;
	String address;
	String car_service;
	String bike_service;
	String image;
	String updated_date;
	
	public ProviderServiceModel() {}

}
