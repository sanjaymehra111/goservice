package com.goservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.goservice.dao.AdminServiceDaoImpl;
import com.goservice.dao.MasterDaoImpl;
import com.goservice.model.AdminServiceModel;

@Controller
public class AdminFunctionController {

@Autowired
MasterDaoImpl msdao;
@Autowired
AdminServiceDaoImpl asdao;


/******************* Master Pager *******************/

@RequestMapping(value="car_master_list", method=RequestMethod.GET)
public String Car_master_list(@RequestParam String maker, @RequestParam String model)
	{
		msdao.CarMaster(maker, model);
		return "redirect:admin_create_car_master";
	}

@RequestMapping(value="bike_master_list", method=RequestMethod.GET)
public String Bike_master_list(@RequestParam String maker, @RequestParam String model )
	{
		msdao.BikeMaster(maker, model);
		return "redirect:admin_create_bike_master";
	}
@RequestMapping(value="service_master_list", method=RequestMethod.GET)
public String Serviec_master_list(@RequestParam String data)
	{
		msdao.ServiceMaster(data);
		return "redirect:admin_create_service_master";
	}

@RequestMapping(value="price_master_list", method=RequestMethod.GET)
public String Price_master_list(@RequestParam String data)
	{
		msdao.PriceMaster(data);
		return "redirect:admin_create_price_master";
	}



/******************* Service Pager *******************/

@RequestMapping(value="create_car_service", method=RequestMethod.GET)
public String Create_car_service(@RequestParam String maker, @RequestParam String model, @RequestParam String service, @RequestParam String charges) 
	{
		msdao.CarServiceCreate(maker, model, service, charges);
		return "redirect:admin_create_car_service";
	}

@ResponseBody
@RequestMapping("get_car_master_details")
public String Get_car_service_details()
{
	Gson gson = new Gson();
	List<AdminServiceModel> car = asdao.GetCarMaster();
	List<AdminServiceModel> service = asdao.GetServiceMaster();
	List<AdminServiceModel> price = asdao.GetPriceMaster();
	
	String car_details = gson.toJson(car);
	String service_details = gson.toJson(service);
	String price_details = gson.toJson(price);
	String details = "["+car_details+","+service_details+","+price_details+"]";
	return details ;
}

@RequestMapping(value="create_bike_service", method=RequestMethod.GET)
public String Create_bike_service(@RequestParam String maker, @RequestParam String model, @RequestParam String service, @RequestParam String charges) 
	{
		msdao.BikeServiceCreate(maker, model, service, charges);
		return "redirect:admin_create_bike_service";
	}

@ResponseBody
@RequestMapping("get_bike_master_details")
public String get_bike_service_details()
{
	Gson gson = new Gson();
	List<AdminServiceModel> car = asdao.GetBikeMaster();
	List<AdminServiceModel> service = asdao.GetServiceMaster();
	List<AdminServiceModel> price = asdao.GetPriceMaster();
	
	String bike_details = gson.toJson(car);
	String service_details = gson.toJson(service);
	String price_details = gson.toJson(price);
	String details = "["+bike_details+","+service_details+","+price_details+"]";
	return details ;
}


@ResponseBody
@RequestMapping("view_car_service")
public String View_car_service()
{
	Gson gson = new Gson();
	List<AdminServiceModel> car = asdao.GetCarServiceDetails();
	String details = gson.toJson(car);
	return details;
}


@ResponseBody
@RequestMapping("view_bike_service")
public String View_bike_service()
{
	Gson gson = new Gson();
	List<AdminServiceModel> bike = asdao.GetBikeServiceDetails();
	String details = gson.toJson(bike);
	return details;
}



}