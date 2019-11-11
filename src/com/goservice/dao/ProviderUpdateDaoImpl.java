package com.goservice.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.goservice.model.ProviderMemberModel;
import com.goservice.model.ProviderProfileModel;
import com.goservice.model.ProviderServiceModel;
import com.goservice.model.ProviderShopModel;

@Repository
public class ProviderUpdateDaoImpl {
	
	String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());

	@Autowired
	JdbcTemplate template;
	
/*	///@Autowired(required=false)
	//@PersistenceContext
	//@Autowired
	private EntityManager em;	
*/	
	public int UpdateProfile(ProviderProfileModel ppm, String filename)
	{
		String query = "UPDATE service_provider_profile SET name='"+ppm.getName()+"', contact='"+ppm.getContact()+"', email='"+ppm.getEmail()+"',shop_name='"+ppm.getShop_name()+"',address='"+ppm.getAddress()+"',image='"+filename+"',updated_date='"+date+"' WHERE provider_id='"+ppm.getProvider_id()+"'";
		return template.update(query);
	}
	
	public int UpdateProfileNoImg(ProviderProfileModel ppm)
	{
		String query = "UPDATE service_provider_profile SET name='"+ppm.getName()+"', contact='"+ppm.getContact()+"', email='"+ppm.getEmail()+"',shop_name='"+ppm.getShop_name()+"',address='"+ppm.getAddress()+"', updated_date='"+date+"' WHERE provider_id='"+ppm.getProvider_id()+"'";
		return template.update(query);
	}
	
	/*@SuppressWarnings("unchecked")*/
	/*public List<ProviderShopModel> UpdateShopDetails(ProviderServiceModel psm, String filename)*/
	public int UpdateShopDetails(ProviderServiceModel psm, String filename)
	{
		List<ProviderServiceModel> query1 = template.query("select * from service_provider_shop_details where provider_id = '"+psm.getProvider_id()+"'", new RowMapper<ProviderServiceModel>()
		{
			@Override
			public ProviderServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				ProviderServiceModel psm = new ProviderServiceModel();
				psm.setProvider_id(rs.getString("provider_id"));
				return psm;
			}
		});
		
		if(query1.size() > 0)
		{	
			String query2 = "UPDATE service_provider_shop_details SET shop_name='"+psm.getShop_name()+"', contact='"+psm.getContact()+"', email='"+psm.getEmail()+"',address='"+psm.getAddress()+"',image='"+filename+"', latitude='"+psm.getLatitude()+"', longitude='"+psm.getLongitude()+"', updated_date='"+date+"' WHERE provider_id='"+psm.getProvider_id()+"'";
			return template.update(query2);
		}
		else
		{
			String query3 = "insert into service_provider_shop_details (provider_id, shop_name, contact, email, address, image, latitude, longitude, updated_date, created_date)"+"values('"+psm.getProvider_id()+"','"+psm.getShop_name()+"','"+psm.getContact()+"','"+psm.getEmail()+"','"+psm.getAddress()+"','"+filename+"','"+psm.getLatitude()+"','"+psm.getLongitude()+"','"+date+"','"+date+"')";
			return template.update(query3);
		}


		
		
		//String query3 = "insert into service_provider_shop_details (provider_id, shop_name, contact, email, address, image, latitude, longitude, updated_date, created_date)"+"values('"+psm.getProvider_id()+"','"+psm.getShop_name()+"','"+psm.getContact()+"','"+psm.getEmail()+"','"+psm.getAddress()+"','"+filename+"','"+psm.getLatitude()+"','"+psm.getLongitude()+"','"+date+"','"+date+"')";
				
		//String query = "UPDATE service_provider_shop_details SET shop_name='"+psm.getShop_name()+"', contact='"+psm.getContact()+"', email='"+psm.getEmail()+"',address='"+psm.getAddress()+"',image='"+filename+"', updated_date='"+date+"' WHERE provider_id='"+psm.getProvider_id()+"'";
		//String query = "UPDATE service_provider_services SET provider_id='"+psm.getProvider_id()+"', shop_name='"+psm.getShop_name()+"', contact='"+psm.getContact()+"', email='"+psm.getEmail()+"',address='"+psm.getAddress()+"',car_service='"+psm.getCar_service()+"',bike_service='"+psm.getBike_service()+"',image='"+filename+"',updated_date='"+date+"' WHERE service_id='"+psm.getService_id()+"'";
		//return query2;
		

		/*List<ProviderShopModel> query2 = em.createNamedStoredProcedureQuery("shop_details_by_id").setParameter("id", psm.getProvider_id()).getResultList();
		return em.createNamedStoredProcedureQuery("shop_details_sp").getResultList();*/
		
	}
	
	public int UpdateShopDetailsNoImg(ProviderServiceModel psm)
	{
		List<ProviderServiceModel> query1 = template.query("select * from service_provider_shop_details where provider_id = '"+psm.getProvider_id()+"'", new RowMapper<ProviderServiceModel>()
		{
			@Override
			public ProviderServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				ProviderServiceModel psm = new ProviderServiceModel();
				psm.setProvider_id(rs.getString("provider_id"));
				return psm;
			}
		});
		
		if(query1.size() > 0)
		{	
			String query2 = "UPDATE service_provider_shop_details SET shop_name='"+psm.getShop_name()+"', contact='"+psm.getContact()+"', email='"+psm.getEmail()+"',address='"+psm.getAddress()+"',latitude='"+psm.getLatitude()+"', longitude='"+psm.getLongitude()+"', updated_date='"+date+"' WHERE provider_id='"+psm.getProvider_id()+"'";
			return template.update(query2);
		}
		else
		{
			String query3 = "insert into service_provider_shop_details (provider_id, shop_name, contact, email, address, latitude, longitude, updated_date, created_date)"+"values('"+psm.getProvider_id()+"','"+psm.getShop_name()+"','"+psm.getContact()+"','"+psm.getEmail()+"','"+psm.getAddress()+"','"+psm.getLatitude()+"','"+psm.getLongitude()+"','"+date+"','"+date+"')";
			return template.update(query3);
		}
		
		/*System.out.println("dao no img:" + psm);
		String query = "insert into service_provider_shop_details (provider_id, shop_name, contact, email, address, image, latitude, longitude, updated_date, created_date)"+"values('"+psm.getProvider_id()+"','"+psm.getShop_name()+"','"+psm.getContact()+"','"+psm.getEmail()+"','"+psm.getAddress()+"', '"+psm.getLatitude()+"','"+psm.getLongitude()+"','"+date+"','"+date+"')";
		//String query = "UPDATE service_provider_shop_details SET shop_name='"+psm.getShop_name()+"', contact='"+psm.getContact()+"', email='"+psm.getEmail()+"',address='"+psm.getAddress()+"',latitude='"+psm.getLatitude()+"', longitude='"+psm.getLongitude()+"', updated_date='"+date+"' WHERE provider_id='"+psm.getProvider_id()+"'";
		//String query = "UPDATE service_provider_shop_details SET provider_id='"+psm.getProvider_id()+"', shop_name='"+psm.getShop_name()+"', contact='"+psm.getContact()+"', email='"+psm.getEmail()+"',address='"+psm.getAddress()+"',car_service='"+psm.getCar_service()+"',bike_service='"+psm.getBike_service()+"',updated_date='"+date+"' WHERE service_id='"+psm.getService_id()+"'";
		return template.update(query);*/
		
	}
	
	public List<ProviderServiceModel> GetCarService(String id)
	{
		List<ProviderServiceModel> query = template.query("select * from service_provider_car_service where provider_id = '"+id+"'", new RowMapper<ProviderServiceModel>()
				{
					@Override
					public ProviderServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						ProviderServiceModel psm = new ProviderServiceModel();
						psm.setService_id(rs.getString("service_id"));
						psm.setProvider_id(rs.getString("provider_id"));
						psm.setCar_service(rs.getString("car_service"));
						psm.setUpdated_date(rs.getString("updated_date"));
						return psm;
					}
				});
		return query;
	}

	
	public List<ProviderServiceModel> GetBikeService(String id)
	{
		List<ProviderServiceModel> query = template.query("select * from service_provider_bike_service where provider_id = '"+id+"'", new RowMapper<ProviderServiceModel>()
				{
					@Override
					public ProviderServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						
						ProviderServiceModel psm = new ProviderServiceModel();
						psm.setService_id(rs.getString("service_id"));
						psm.setProvider_id(rs.getString("provider_id"));
						psm.setBike_service(rs.getString("bike_service"));
						psm.setUpdated_date(rs.getString("updated_date"));
						return psm;
					}
			
				});
		return query;
	}
	
	public int UpdateCarService(String pid, String csid)
	{
		String query = "insert into service_provider_car_service (provider_id, car_service, updated_date)"+"values('"+pid+"','"+csid+"','"+date+"')";
		return template.update(query);
	}
	
	public int DeleteCarService(String pid, String csid)
	{
		String query = "delete from service_provider_car_service where provider_id='"+pid+"' and car_service='"+csid+"'";
		return template.update(query);
	}

	public int UpdateBikeService(String pid, String bsid)
	{
		String query = "insert into service_provider_bike_service (provider_id, bike_service, updated_date)"+"values('"+pid+"','"+bsid+"','"+date+"')";
		return template.update(query);
	}
	
	public int DeleteBikeService(String pid, String bsid)
	{
		String query = "delete from service_provider_bike_service where provider_id='"+pid+"' and bike_service='"+bsid+"'";
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
	
	public int DeleteTeamMember(String id) 
	{
		String query = "delete from service_provider_team where team_member_id='"+id+"'";
		return template.update(query);
	}

	public List<ProviderServiceModel> CountCarService(String id) 
	{
		List<ProviderServiceModel> query = template.query("SELECT COUNT(provider_id) FROM service_provider_car_service WHERE provider_id ='"+id+"'", new RowMapper<ProviderServiceModel>()
				{
					@Override
					public ProviderServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						ProviderServiceModel psm = new ProviderServiceModel();
						psm.setCount(rs.getString("count(provider_id)"));
						return psm;
					}
				});
		return query;
	}
	
	public List<ProviderServiceModel> CountBikeService(String id) 
	{
		List<ProviderServiceModel> query = template.query("SELECT COUNT(provider_id) FROM service_provider_bike_service WHERE provider_id ='"+id+"'", new RowMapper<ProviderServiceModel>()
				{
					@Override
					public ProviderServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						ProviderServiceModel psm = new ProviderServiceModel();
						psm.setCount(rs.getString("count(provider_id)"));
						return psm;
					}
				});
		return query;
	}
	
	public List<ProviderMemberModel> CountTeamService(String id) 
	{
		List<ProviderMemberModel> query = template.query("SELECT COUNT(provider_id) FROM service_provider_team WHERE provider_id ='"+id+"'", new RowMapper<ProviderMemberModel>()
				{
					@Override
					public ProviderMemberModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						ProviderMemberModel pmm = new ProviderMemberModel();
						pmm.setCount(rs.getString("count(provider_id)"));
						return pmm;
					}
				});
		return query;
	}
	
	public List<ProviderServiceModel> GetShopDetails(String id)
	{
		List<ProviderServiceModel> query = template.query("select * from service_provider_shop_details where provider_id = '"+id+"'", new RowMapper<ProviderServiceModel>()
				{
					@Override
					public ProviderServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						ProviderServiceModel psm = new ProviderServiceModel();
						psm.setShop_id(rs.getString("shop_id"));
						psm.setProvider_id(rs.getString("provider_id"));
						psm.setShop_name(rs.getString("shop_name"));
						psm.setContact(rs.getString("contact"));
						psm.setEmail(rs.getString("email"));
						psm.setAddress(rs.getString("address"));
						psm.setImage(rs.getString("image"));
						psm.setLatitude(rs.getString("latitude"));
						psm.setLongitude(rs.getString("longitude"));
						psm.setCreated_date(rs.getString("created_date"));
						
						return psm;
					}
				});
		return query;
	}

	
}
