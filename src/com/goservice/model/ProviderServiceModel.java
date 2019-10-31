package com.goservice.model;

import lombok.Data;

@Data
public class ProviderServiceModel {
	
	String service_id;
	String shop_id;
	String provider_id;
	String shop_name;
	String contact; 
	String email;
	String address;
	String car_service;
	String bike_service;
	String image;
	String latitude;
	String longitude;
	String updated_date;
	String created_date;
	
	public ProviderServiceModel() {}

}
