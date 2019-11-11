package com.serviceonway.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.serviceonway.dao.OtpGenerateDaoImpl;
import com.serviceonway.model.OtpGenerateModel;

@Controller
public class OtpGenerateController {

	@Autowired
	UniqueCodeGenerator ucgdao;
	
	@Autowired
	OtpGenerateDaoImpl otpdao;

	@ResponseBody
	@RequestMapping("OtpGenerator")
	public String OtpGenerator(@RequestParam String name, String contact, HttpServletResponse response) throws Exception
	{
		String otp= ucgdao.GetOtpCode();
		otpdao.InsertOtpDetails(name, contact, otp);
		String url = "http://bulksms.softonicsolution.com/api/sendmsg.php?user=alex-c&pass=sahab123&sender=ALEXCO&phone="+contact+"&text="+otp+"&priority=ndnd&stype=normal";
		sendPost(url);
		return "success";
	}
	
	@ResponseBody
	@RequestMapping("RegenerateOtp")
	public String RegenerateOtp(@RequestParam String name, String contact, HttpServletResponse response) throws Exception
	{
		String otp= ucgdao.GetOtpCode();
		otpdao.RegenerateOtpDetails(name, contact, otp);
		String url = "http://bulksms.softonicsolution.com/api/sendmsg.php?user=alex-c&pass=sahab123&sender=ALEXCO&phone="+contact+"&text="+otp+"&priority=ndnd&stype=normal";
		sendPost(url);
		return "success";
	}
	
	@ResponseBody
	@RequestMapping("ValidateOtp")
	public String ValidateOtp(@RequestParam String otp, String name, String contact) 
	{
		List<OtpGenerateModel> data = otpdao.CheckOtp(otp, name, contact);
		if(data.isEmpty() || data.contains(null))
			return "error";
		else
			return "success";
	
	}
	
	
	
	 private void sendPost(String url1) throws Exception {
		 	String urlParameters = "sn=C02G8416DRJM&cn=&locale=&caller=&num=12345";
			String url = url1;
	        HttpURLConnection httpClient = (HttpURLConnection) new URL(url).openConnection();

	        //add reuqest header
	        httpClient.setRequestMethod("POST");
	        httpClient.setRequestProperty("User-Agent", "Chrome");
	        httpClient.setRequestProperty("Accept-Language", "en-US,en;q=0.5");

	        

	        // Send post request
	        httpClient.setDoOutput(true);
	        try (DataOutputStream wr = new DataOutputStream(httpClient.getOutputStream())) {
	            wr.writeBytes(urlParameters);
	            wr.flush();
	        }
	        //int responseCode = httpClient.getResponseCode();
	        //System.out.println("\nSending 'POST' request to URL : " + url);
	        //System.out.println("Post parameters : " + urlParameters);
	        //System.out.println("Response Code : " + responseCode);

	        try (BufferedReader in = new BufferedReader(
	                new InputStreamReader(httpClient.getInputStream()))) {

	            String line;
	            StringBuilder response = new StringBuilder();

	            while ((line = in.readLine()) != null) {
	                response.append(line);
	            }
	            System.out.println("response string : " +response.toString());
	        }
	    }
	 
	 private void sendGet(String url1) throws Exception {

	        String url = url1;

	        HttpURLConnection httpClient =
	                (HttpURLConnection) new URL(url).openConnection();

	        // optional default is GET
	        httpClient.setRequestMethod("GET");

	        //add request header
	        //httpClient.setRequestProperty("User-Agent", "");

	        int responseCode = httpClient.getResponseCode();
	        System.out.println("\nSending 'GET' request to URL : " + url);
	        System.out.println("Response Code : " + responseCode);

	        try (BufferedReader in = new BufferedReader(
	                new InputStreamReader(httpClient.getInputStream()))) {

	            StringBuilder response = new StringBuilder();
	            String line;

	            while ((line = in.readLine()) != null) {
	                response.append(line);
	            }

	            //print result
	            System.out.println(response.toString());

	        }

	    }



	
}
