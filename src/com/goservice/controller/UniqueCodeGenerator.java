package com.goservice.controller;

import java.math.BigInteger;
import java.util.UUID;

import org.springframework.stereotype.Repository;

@Repository
public class UniqueCodeGenerator {
	
	public String GetUniqueCode() 
	{
		UUID uuid=UUID.randomUUID();
	    String str=uuid.toString().replace("-", "");
	    return str;
	}
	
	public String GetOtpCode() 
	{
		UUID uuid=UUID.randomUUID();
		String str=String.format("%06d", new BigInteger(uuid.toString().replace("-", ""),32));
		String otp = str.substring(10,16);
	    return otp;
	}
}
