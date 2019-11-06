package com.goservice.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.goservice.dao.AdminServiceDaoImpl;
import com.goservice.dao.ProviderProfileDaoIpml;
import com.goservice.dao.ProviderShopDaoImpl;
import com.goservice.dao.ProviderUpdateDaoImpl;
import com.goservice.model.ProviderProfileModel;
import com.goservice.model.ProviderShopModel;
import com.goservice.model.SessionModel;


@Controller
public class MainController {

@Autowired
ProviderShopDaoImpl psdao;

@Autowired
AdminServiceDaoImpl asdao;

@Autowired
ProviderProfileDaoIpml ppdao;

@Autowired
ProviderUpdateDaoImpl pudao;

	

/****************** Header Link ******************/

	@RequestMapping("/")
	public String IndexPage()
	{
		return "index";
	}

	@RequestMapping("index")
	public String IndexPage2()
	{
		return "index"; 
	}


	@RequestMapping("login")
	public String UserLogin()
	{
		return "login";
	}
	
	@RequestMapping("header-file")
	public String HeaderFile()
	{
		return "header-file";
	}

	@RequestMapping("footer-file")
	public String FooterFile()
	{
		return "footer-file";
	}
	
	@RequestMapping("service")
	public String ServiceFile()
	{
		return "service";
	}
	
	@RequestMapping("serviceformpopup")
	public String ServicePopUpFile()
	{
		return "serviceformpopup";
	}
	
	@ResponseBody
	@RequestMapping("fetchshopdetails")
	public String ShopDetails()
	{
		Gson gson = new Gson();
		List<ProviderShopModel> data1 = psdao.GetProviderShopDetails();
		String details = gson.toJson(data1);
		return details;
	}
	
	
	@RequestMapping("car-service")
	public String Car_Service()
	{
		return "car-service";
	}
	
	@RequestMapping("bike-service")
	public String Bike_Service()
	{
		return "bike-service";
	}
	
	@RequestMapping("car-insurance")
	public String Car_Insurance()
	{
		return "car-insurance";
	}
	
	@RequestMapping("bike-insurance")
	public String Bike_Insurance()
	{
		return "bike-insurance";
	}

	@RequestMapping("admin_dashboard")
	public String Admin_dashboard()
	{
		return "admin/admin_dashboard";
	}

	@RequestMapping("service_provider_dashboard")
	public String Service_Provider_dashboard(HttpSession session, Model model, @ModelAttribute ("provider_id") String pid)
	{
		SessionModel sessionModel = (SessionModel) session.getAttribute("sessionData");
		//System.out.println("Session Data: " + sessionModel);
		if(!pid.equals("")){
			
			List<ProviderProfileModel> data = ppdao.Provider_details(sessionModel.getUser_id());
			model.addAttribute("data", data);
			return "service_provider/provider_dashboard";
		}
		else
		{
			if(sessionModel!=null)
			{
				List<ProviderProfileModel> data = ppdao.Provider_details(sessionModel.getUser_id());
				model.addAttribute("data", data);
				return "service_provider/provider_dashboard";
			}
			else
			{
				return "redirect:/index";
			}
		}
	}

	@RequestMapping("user_dashboard")
	public String User_dashboard()
	{
		return "user/user_dashboard";
	}

	
	
	
	
	
	/****************** FooterLink ******************/
	
	@RequestMapping("service_provider_login")
	public String Service_provider_login()
	{
		return "service_provider/provider_login";
	}

	@RequestMapping("about-us")
	public String About_us()
	{
		return "about-us";
	}

	@RequestMapping("contact-us")
	public String Contact_us()
	{
		return "contact-us";
	}

	
	
	
	
	
	///****************** Admin Link ******************/
	
	@RequestMapping("admin_history")
	public String Admin_history()
	{
		return "admin/admin_history";
	}

	@RequestMapping("admin_home")
	public String Admin_home()
	{
		return "admin/admin_home";
	}
	
	@RequestMapping("admin_partner_group")
	public String Admin_partner_group()
	{
		return "admin/admin_partner_group";
	}
	
	@RequestMapping("admin_user_group")
	public String Admin_user_group()
	{
		return "admin/admin_user_group";
	}
	
	@RequestMapping("admin_create_bike_master")
	public String Admin_create_bike_master()
	{
		return "admin/admin_create_bike_master";
	}

	@RequestMapping("admin_create_car_master")
	public String Admin_create_car_master()
	{
		return "admin/admin_create_car_master";
	}

	@RequestMapping("admin_create_service_master")
	public String Admin_create_service_master()
	{
		return "admin/admin_create_service_master";
	}

	@RequestMapping("admin_create_price_master")
	public String Admin_create_price_master()
	{
		return "admin/admin_create_price_master";
	}
	
	@RequestMapping("admin_create_car_service")
	public String Admin_create_car_service()
	{
		return "admin/admin_create_car_service";
	}
	
	
	@RequestMapping("admin_create_bike_service")
	public String Admin_create_bike_service()
	{
		return "admin/admin_create_bike_service";
	}

	@RequestMapping("admin_view_car_service")
	public String Admin_view_car_service()
	{
		return "admin/admin_view_car_service";
	}

	@RequestMapping("admin_view_bike_service")
	public String Admin_view_bike_service()
	{
		return "admin/admin_view_bike_service";
	}

	
	
	
	
	
	

	/****************** Service Provider Link ******************/
	
	@RequestMapping("blank")
	public String Blank_Page()
	{
		return "service_provider/blank";
	}

	@RequestMapping("provider_create_service")
	public String Provider_create_service()
	{
		return "service_provider/provider_create_service";
	}

	@RequestMapping("provider_create_shop")
	public String Provider_create_shop()
	{
		return "service_provider/provider_create_shop";
	}

	
	@RequestMapping("provider_create_team")
	public String Provider_create_team()
	{
		return "service_provider/provider_create_team";
	}

	
	@RequestMapping("provider_home")
	public String Provider_home()
	{
		return "service_provider/provider_home";
	}

	
	@RequestMapping("provider_profile")
	public String Provider_profile()
	{
		return "service_provider/provider_profile";
	}

	
	@RequestMapping("provider_team")
	public String Provider_team()
	{
		return "service_provider/provider_team";
	}

	
	/****************** User Link ******************/
	
	
	@RequestMapping("user_history")
	public String User_history()
	{
		return "user/user_history";
	}

	@RequestMapping("user_home")
	public String User_home()
	{
		return "user/user_home";
	}

	@RequestMapping("user_profile")
	public String User_profile()
	{
		return "user/user_profile";
	}
	
}
