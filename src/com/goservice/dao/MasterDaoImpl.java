package com.goservice.dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MasterDaoImpl {
	
@Autowired
JdbcTemplate template;

String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());

/******************* Master Pager *******************/

	public int CarMaster(String maker, String model)
	{
			String query1 = "insert into car_master (maker,model,date)"+"values('"+maker+"','"+model+"','"+date+"')";
					return template.update(query1);
	}
	
	public int BikeMaster(String maker, String model)
	{
		String query1 = "insert into bike_master (maker,model,date)"+"values('"+maker+"','"+model+"','"+date+"')";
				return template.update(query1);
	}
	
	public int ServiceMaster(String data)
	{
		String query1 = "insert into service_master (service,date)"+"values('"+data+"','"+date+"')";
				return template.update(query1);
	}
	
	public int PriceMaster(String data)
	{
		String query1 = "insert into price_master (charges,date)"+"values('"+data+"','"+date+"')";
				return template.update(query1);
	}
	
	
	
	
	
	/******************* Service Pager *******************/
	
	public int CarServiceCreate(String maker, String model, String service, String charges)
	{
		String query1 = "insert into car_service (maker, model, service, charges,  date)"+"values('"+maker+"','"+model+"','"+service+"', '"+charges+"','"+date+"')";
				return template.update(query1);
	}

	public int BikeServiceCreate(String maker, String model, String service, String charges)
	{
		String query1 = "insert into bike_service (maker, model, service, charges,  date)"+"values('"+maker+"','"+model+"','"+service+"', '"+charges+"','"+date+"')";
				return template.update(query1);
	}


}
