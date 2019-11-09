package com.goservice.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.assertj.core.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.goservice.model.OtpGenerateModel;
import com.goservice.model.ProviderProfileModel;

@Repository
public class OtpGenerateDaoImpl {

	String date = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(Calendar.getInstance().getTime());
	
	@Autowired
	JdbcTemplate template;
	
	public int InsertOtpDetails(String name, String contact, String otp)
	{
		Calendar startTime = Calendar.getInstance();
		startTime.add(startTime.MINUTE, 1);
		String validUpto = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(startTime.getTime());
		
		String query = "insert into otp_generate (name,contact,otp,validUpto) value('"+name+"', '"+contact+"', '"+otp+"', '"+validUpto+"')";
		return template.update(query);
	}
	
	public List<OtpGenerateModel> CheckOtp(String otp, String name, String contact)
	{
		
		
		List<OtpGenerateModel> query = template.query("select * from otp_generate where name='"+name+"' and contact ='"+contact+"' and otp ='"+otp+"'", new RowMapper<OtpGenerateModel>() {
			@Override
			public OtpGenerateModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				OtpGenerateModel otpm = new OtpGenerateModel();
				otpm.setId(rs.getString("id"));
				otpm.setValidUpto(rs.getString("validUpto"));

			/*	Date db_date = null;
				try {
					db_date = new SimpleDateFormat("dd-yyyy-mm hh:mm:ss").parse(otpm.getValidUpto());
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Date ct_date = null;
				try {
					ct_date = new SimpleDateFormat("dd-yyyy-mm hh:mm:ss").parse(date);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
				
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
						//System.out.println("success date");
						return otpm;
					}
					else
					{
						//System.out.println("error date");
						return null;
					}
				

			}
		});
		
		if(query.size() > 0)
			return query;
		else
			return null;
	}
	
	
}
