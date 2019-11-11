package com.serviceonway.model;

import lombok.Data;

@Data
public class ProviderProfileModel {
	
	String provider_id;
	String name;
	String contact; 
	String email;
	String password;
	String shop_name;
	String address;
	String image;
	String updated_date;
	String created_date;
	String status;
	
	public ProviderProfileModel() {}

}
