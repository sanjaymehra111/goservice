package com.goservice.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.goservice.model.ProviderProfileModel;

@Repository
public class ProviderProfileDaoIpml {

	@Autowired
	JdbcTemplate template;
	
	public List<ProviderProfileModel> Provider_details(String id)
	{
		List<ProviderProfileModel> query = template.query("select * from service_provider_profile where provider_id = '"+id+"'", new RowMapper<ProviderProfileModel>()
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
						ppm.setImage(rs.getString("image"));
						ppm.setCreated_date(rs.getString("created_date"));
						ppm.setUpdated_date(rs.getString("updated_date"));
						ppm.setStatus(rs.getString("status"));
						return ppm;
					}
			
				});
		return query;
	}
	
}
