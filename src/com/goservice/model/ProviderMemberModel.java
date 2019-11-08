package com.goservice.model;

import lombok.Data;

@Data
public class ProviderMemberModel {
	String team_member_id;
	String provider_id;
	String name;	
	String contact; 
	String email;
	String address;
	String image;
	String updated_date;
	String created_date;
	String count;
	
	public ProviderMemberModel() {}

}
