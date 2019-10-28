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

import com.goservice.model.ProviderMemberModel;
import com.goservice.model.ProviderProfileModel;
import com.goservice.model.ProviderServiceModel;

@Repository
public class ProviderUpdateDaoImpl {
	
	String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());

	@Autowired
	JdbcTemplate template;
	
	public int UpdateProfile(ProviderProfileModel ppm, String filename)
	{
		String query = "UPDATE service_provider_profile SET name='"+ppm.getName()+"', contact='"+ppm.getContact()+"', email='"+ppm.getEmail()+"',shop_name='"+ppm.getShop_name()+"',address='"+ppm.getAddress()+"',image='"+filename+"',updated_date='"+date+"' WHERE id='"+ppm.getId()+"'";
		return template.update(query);
	}
	
	public int UpdateProfileNoImg(ProviderProfileModel ppm)
	{
		String query = "UPDATE service_provider_profile SET name='"+ppm.getName()+"', contact='"+ppm.getContact()+"', email='"+ppm.getEmail()+"',shop_name='"+ppm.getShop_name()+"',address='"+ppm.getAddress()+"', updated_date='"+date+"' WHERE id='"+ppm.getId()+"'";
		return template.update(query);
	}
	
	public int UpdateService(ProviderServiceModel psm, String filename)
	{
		String query = "UPDATE service_provider_services SET provider_id='"+psm.getProvider_id()+"', shop_name='"+psm.getShop_name()+"', contact='"+psm.getContact()+"', email='"+psm.getEmail()+"',address='"+psm.getAddress()+"',car_service='"+psm.getCar_service()+"',bike_service='"+psm.getBike_service()+"',image='"+filename+"',updated_date='"+date+"' WHERE service_id='"+psm.getService_id()+"'";
		return template.update(query);
	}
	
	public int UpdateServiceNoImg(ProviderServiceModel psm)
	{
		String query = "UPDATE service_provider_services SET provider_id='"+psm.getProvider_id()+"', shop_name='"+psm.getShop_name()+"', contact='"+psm.getContact()+"', email='"+psm.getEmail()+"',address='"+psm.getAddress()+"',car_service='"+psm.getCar_service()+"',bike_service='"+psm.getBike_service()+"',updated_date='"+date+"' WHERE service_id='"+psm.getService_id()+"'";
		return template.update(query);
	}
	
	public int CreateMember(ProviderMemberModel pmm, String filename) 
	{
		String query = "insert into service_provider_team (provider_id, name, contact, email, address, image, created_date)"+"values('"+pmm.getProvider_id()+"','"+pmm.getName()+"','"+pmm.getContact()+"', '"+pmm.getEmail()+"', '"+pmm.getAddress()+"','"+filename+"','"+date+"')";
		return template.update(query);
	}

	public int CreateMemberNoImg(ProviderMemberModel pmm) 
	{
		String query = "insert into service_provider_team (provider_id, name, contact, email, address, created_date)"+"values('"+pmm.getProvider_id()+"','"+pmm.getName()+"','"+pmm.getContact()+"', '"+pmm.getEmail()+"', '"+pmm.getAddress()+"','"+date+"')";
		return template.update(query);
	}

	public List<ProviderMemberModel> GetTeamMember(String id)
	{
		List<ProviderMemberModel> query = template.query("select * from service_provider_team where provider_id = '"+id+"'", new RowMapper<ProviderMemberModel>()
				{

					@Override
					public ProviderMemberModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						
						ProviderMemberModel ppm = new ProviderMemberModel();
						ppm.setTeam_member_id(rs.getString("team_member_id"));
						ppm.setProvider_id(rs.getString("provider_id"));
						ppm.setName(rs.getString("name"));
						ppm.setEmail(rs.getString("email"));
						ppm.setContact(rs.getString("contact"));
						ppm.setAddress(rs.getString("address"));
						ppm.setImage(rs.getString("image"));
						ppm.setCreated_date(rs.getString("created_date"));	
						ppm.setUpdated_date(rs.getString("updated_date"));						
						return ppm;
					}
			
				});
		return query;
	}
	
	
	public List<ProviderMemberModel> EditTeamMember(String id)
	{
		List<ProviderMemberModel> query = template.query("select * from service_provider_team where team_member_id = '"+id+"'", new RowMapper<ProviderMemberModel>()
				{

					@Override
					public ProviderMemberModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						
						ProviderMemberModel ppm = new ProviderMemberModel();
						ppm.setTeam_member_id(rs.getString("team_member_id"));
						ppm.setProvider_id(rs.getString("provider_id"));
						ppm.setName(rs.getString("name"));
						ppm.setEmail(rs.getString("email"));
						ppm.setContact(rs.getString("contact"));
						ppm.setAddress(rs.getString("address"));
						ppm.setImage(rs.getString("image"));
						ppm.setCreated_date(rs.getString("created_date"));	
						ppm.setUpdated_date(rs.getString("updated_date"));						
						return ppm;
					}
			
				});
		return query;
	}
	
	
	
	public int UpdateMember(ProviderMemberModel pmm, String filename	) 
	{
		String query = "UPDATE service_provider_team SET name='"+pmm.getName()+"', contact='"+pmm.getContact()+"', email='"+pmm.getEmail()+"', address='"+pmm.getAddress()+"', image='"+filename+"', updated_date='"+date+"' WHERE team_member_id='"+pmm.getTeam_member_id()+"'";
		return template.update(query);
	}

	public int UpdateMemberNoImg(ProviderMemberModel pmm) 
	{
		String query = "UPDATE service_provider_team SET name='"+pmm.getName()+"', contact='"+pmm.getContact()+"', email='"+pmm.getEmail()+"', address='"+pmm.getAddress()+"', updated_date='"+date+"' WHERE team_member_id='"+pmm.getTeam_member_id()+"'";
		return template.update(query);
	}
	
	
}
