package com.goservice.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.goservice.model.ProviderProfileModel;


@Repository
public class ProviderSignIn_UpDaoImple {
	String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
	
	@Autowired
	JdbcTemplate template;
	
	public ProviderProfileModel ProviderSignIn(String name, String contact, String email, String password)
	{
		String query = "insert into service_provider_profile (name, contact, email, password, created_date) values('"+name+"','"+contact+"','"+email+"','"+password+"', '"+date+"')";
		template.update(query);
		
		String sql = "select provider_id from service_provider_profile where email ='"+email+"' AND password='"+password+"'";
		List<ProviderProfileModel> query1 = template.query(sql, new ProviderProfileModelMapper());
		return query1.get(0);
	}
	
	
	class ProviderProfileModelMapper implements RowMapper<ProviderProfileModel>
	{
		@Override
		public ProviderProfileModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			ProviderProfileModel pfm = new ProviderProfileModel();
			pfm.setProvider_id(rs.getString("provider_id"));
			return pfm;
		}
	}
	
	
	public List<ProviderProfileModel> ProviderSignUp(String email, String password)
	{
		List<ProviderProfileModel> query = template.query("select * from service_provider_profile where email ='"+email+"' and password='"+password+"'", new RowMapper<ProviderProfileModel>()
				{

					@Override
					public ProviderProfileModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						ProviderProfileModel ppm = new ProviderProfileModel();
						
						ppm.setProvider_id(rs.getString("provider_id"));
						ppm.setName(rs.getString("name"));
						ppm.setContact(rs.getString("contact"));
						ppm.setEmail(rs.getString("email"));
						ppm.setShop_name(rs.getString("shop_name"));
						ppm.setAddress(rs.getString("address"));
						ppm.setCreated_date(rs.getString("created_date"));
						ppm.setUpdated_date(rs.getString("updated_date"));
						ppm.setStatus(rs.getString("status"));
						return ppm;
					}
				}
		);
		if(query.size() > 0)
			return query;
		else
			return null;
	}


	
	
}
