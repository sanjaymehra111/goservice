package com.goservice.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.goservice.model.OtpGenerateModel;

@Repository
public class OtpGenerateDaoImpl {

	//String date = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(Calendar.getInstance().getTime());
	
	@Autowired
	JdbcTemplate template;
	
	public int InsertOtpDetails(String name, String contact, String otp)
	{
		Calendar startTime = Calendar.getInstance();
		startTime.add(startTime.MINUTE, 1);
		String validUpto = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(startTime.getTime());
		String date = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(Calendar.getInstance().getTime());
		String query = "insert into otp_generate (name,contact,otp,sentDate,validUpto) value('"+name+"', '"+contact+"', '"+otp+"', '"+date+"', '"+validUpto+"')";
		return template.update(query);
	}
	
	public int RegenerateOtpDetails(String name, String contact, String otp)
	{
		String date = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(Calendar.getInstance().getTime());
		
		Calendar startTime = Calendar.getInstance();
		startTime.add(startTime.MINUTE, 1);
		String validUpto = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(startTime.getTime());
	
		//String query = "UPDATE service_provider_profile SET name='"+ppm.getName()+"', contact='"+ppm.getContact()+"', email='"+ppm.getEmail()+"',shop_name='"+ppm.getShop_name()+"',address='"+ppm.getAddress()+"',image='"+filename+"',updated_date='"+date+"' WHERE provider_id='"+ppm.getProvider_id()+"'";
		
		String query = "UPDATE otp_generate set otp='"+otp+"', sentDate='"+date+"', validUpto = '"+validUpto+"' where name='"+name+"' and contact='"+contact+"'";
		return template.update(query);
	}
	
	public List<OtpGenerateModel> CheckOtp(String otp, String name, String contact)
	{
		String date = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(Calendar.getInstance().getTime());
		
		List<OtpGenerateModel> query = template.query("select * from otp_generate where name='"+name+"' and contact ='"+contact+"' and otp ='"+otp+"'", new RowMapper<OtpGenerateModel>() {
			@Override
			public OtpGenerateModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				OtpGenerateModel otpm = new OtpGenerateModel();
				otpm.setId(rs.getString("id"));
				otpm.setValidUpto(rs.getString("validUpto"));
	
				Date ct_date = null;
				Date db_date = null;
				try {
					ct_date = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").parse(date);
					db_date = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").parse(otpm.getValidUpto());
				} catch (ParseException e) {
					e.printStackTrace();
				}
				
				//System.out.println("db date: " + db_date);
				//System.out.println("ct date: " + ct_date);
				
				if(ct_date.compareTo(db_date) < 0)
					{
						//System.out.println("otp valid");
						return otpm;
					}
					else
					{
						//System.out.println("otp expire");
						return null;
					}
			}
		});
		//System.out.println("size : "+query.size());
		
		if(query.size() > 0)
			return query;
		else
			return null;
	}
	
	
}
