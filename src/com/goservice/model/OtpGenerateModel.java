package com.goservice.model;

import lombok.Data;

@Data
public class OtpGenerateModel {
	String id;
	String contact;
	String name; 
	String otp;
	String validUpto;
	String sentDate;

}
