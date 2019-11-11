package com.goservice.dao;

import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.goservice.model.ProviderShopModel;

@Repository
public class ProviderShopDaoImpl {
	
@Autowired
JdbcTemplate template;
	
	public List<ProviderShopModel> GetProviderShopDetails()
	{
		List<ProviderShopModel> query1 = template.query("select * from service_provider_shop where provider_shop_status = 1", new RowMapper<ProviderShopModel>() 
		{
			@Override
			public ProviderShopModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				ProviderShopModel psm = new ProviderShopModel();
				psm.setProvider_id(rs.getString("provider_id"));
				psm.setProvider_shop_name(rs.getString("provider_shop_name"));
				psm.setProvider_shop_contact(rs.getString("provider_shop_contact"));
				psm.setProvider_shop_email(rs.getString("provider_shop_email"));
				psm.setProvider_shop_address(rs.getString("provider_shop_address"));
				psm.setProvider_car_service(rs.getString("provider_car_service"));
				psm.setProvider_bike_service(rs.getString("provider_bike_service"));
				psm.setProvider_shop_created(rs.getString("provider_shop_created"));
				psm.setProvider_shop_image(rs.getString("provider_shop_image"));
				psm.setProvider_shop_latitude(rs.getString("provider_shop_latitude"));
				psm.setProvider_shop_longitude(rs.getString("provider_shop_longitude"));
				psm.setProvider_shop_image(rs.getString("provider_shop_image"));
				psm.setProvider_shop_status(rs.getString("provider_shop_status"));
				
				return psm;
			}
		});
		return query1;
	}
}
