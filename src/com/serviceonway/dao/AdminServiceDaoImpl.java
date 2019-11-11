package com.serviceonway.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.serviceonway.model.AdminServiceModel;

@Repository
public class AdminServiceDaoImpl 
{
@Autowired
JdbcTemplate template;

	public List<AdminServiceModel> GetCarServiceDetails()
	{
		List<AdminServiceModel> query1 = template.query("select * from car_service", new RowMapper<AdminServiceModel>()
				{
					@Override
					public AdminServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						AdminServiceModel asm = new AdminServiceModel(); 
						asm.setId(rs.getString("id"));
						asm.setMaker(rs.getString("maker"));
						asm.setModel(rs.getString("model"));
						asm.setService(rs.getString("service"));
						asm.setCharges(rs.getString("charges"));
						asm.setDate(rs.getString("date"));
						return asm;
					}
				});
		return query1;
	}
	
	public List<AdminServiceModel> GetBikeServiceDetails()
	{
		List<AdminServiceModel> query1 = template.query("select * from bike_service", new RowMapper<AdminServiceModel>()
				{
					@Override
					public AdminServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						AdminServiceModel asm = new AdminServiceModel(); 
						asm.setId(rs.getString("id"));
						asm.setMaker(rs.getString("maker"));
						asm.setModel(rs.getString("model"));
						asm.setService(rs.getString("service"));
						asm.setCharges(rs.getString("charges"));
						asm.setDate(rs.getString("date"));
						return asm;
					}
				});
		return query1;
	}
	
	public List<AdminServiceModel> GetCarMaster()
	{
		List<AdminServiceModel> query1 = template.query("select * from car_master", new RowMapper<AdminServiceModel>()
				{
					@Override
					public AdminServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						AdminServiceModel asm = new AdminServiceModel(); 
						asm.setId(rs.getString("id"));
						asm.setMaker(rs.getString("maker"));
						asm.setModel(rs.getString("model"));
						asm.setDate(rs.getString("date"));
						return asm;
					}
				});
		return query1;
	}
	
	public List<AdminServiceModel> GetBikeMaster()
	{
		List<AdminServiceModel> query1 = template.query("select * from bike_master", new RowMapper<AdminServiceModel>()
				{
					@Override
					public AdminServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						AdminServiceModel asm = new AdminServiceModel(); 
						asm.setId(rs.getString("id"));
						asm.setMaker(rs.getString("maker"));
						asm.setModel(rs.getString("model"));
						asm.setDate(rs.getString("date"));
						return asm;
					}
				});
		return query1;
	}
	
	
	public List<AdminServiceModel> GetPriceMaster()
	{
		List<AdminServiceModel> query1 = template.query("select * from price_master", new RowMapper<AdminServiceModel>()
				{
					@Override
					public AdminServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						AdminServiceModel asm = new AdminServiceModel(); 
						asm.setId(rs.getString("id"));
						asm.setCharges(rs.getString("charges"));
						asm.setDate(rs.getString("date"));
						return asm;
					}
				});
		return query1;
	}
	
	public List<AdminServiceModel> GetServiceMaster()
	{
		List<AdminServiceModel> query1 = template.query("select * from service_master", new RowMapper<AdminServiceModel>()
				{
					@Override
					public AdminServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						AdminServiceModel asm = new AdminServiceModel(); 
						asm.setId(rs.getString("id"));
						asm.setService(rs.getString("service"));
						asm.setDate(rs.getString("date"));
						return asm;
					}
				});
		return query1;
	}
	
	
}
