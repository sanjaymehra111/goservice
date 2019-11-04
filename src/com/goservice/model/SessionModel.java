package com.goservice.model;

import lombok.Data;

@Data
public class SessionModel {

	String session_id;
	String user_id;
	long time;

	
	
	public SessionModel(){}
}
