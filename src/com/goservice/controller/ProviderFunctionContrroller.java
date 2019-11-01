package com.goservice.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TreeSet;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.google.gson.Gson;
import com.goservice.dao.ProviderUpdateDaoImpl;
import com.goservice.model.ProviderMemberModel;
import com.goservice.model.ProviderProfileModel;
import com.goservice.model.ProviderServiceModel;

@Controller
public class ProviderFunctionContrroller 
{
	
	@Autowired
	UniqueCodeGenerator ucgdao;
	
	@Autowired
	ProviderUpdateDaoImpl pudao;
	
	
	@RequestMapping(value="update_service_provider_img", method=RequestMethod.POST)
	public String Update_service_provider_img(ProviderProfileModel ppm,  @RequestParam CommonsMultipartFile file, HttpSession session)throws Exception {
		ServletContext context= session.getServletContext();
		
		String path = context.getRealPath("/resources/service_provider_images/images/");
		String filename= ucgdao.GetUniqueCode()+"-"+file.getOriginalFilename();
		//String profile_path = path  + filename;
		
		byte[] bytes = file.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close(); 
		pudao.UpdateProfile(ppm, filename);
		return "redirect:/provider_profile";
	}
	
	@RequestMapping(value="update_service_provider_no_img", method=RequestMethod.POST)
	public String Update_service_provider_no_img(ProviderProfileModel ppm){
		pudao.UpdateProfileNoImg(ppm);
		return "redirect:/provider_profile";
	}
	
	

	@RequestMapping(value="update_service_provider_services", method=RequestMethod.POST)
	public String Update_service_provider_services(ProviderServiceModel psm,  @RequestParam CommonsMultipartFile file, HttpSession session)throws Exception {
		
		ServletContext context= session.getServletContext();
		
		String path = context.getRealPath("/resources/service_provider_images/images/");
		String filename= ucgdao.GetUniqueCode()+"-"+file.getOriginalFilename();
		//String profile_path = path  + filename;
		
		byte[] bytes = file.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close(); 
		pudao.UpdateService(psm, filename);
		return "redirect:/provider_profile"; 
		
	}
	
	
	
	
	
	@RequestMapping(value="update_service_provider_services_no_img", method=RequestMethod.POST)
	public String Update_service_provider_services_no_img(ProviderServiceModel psm){
		
		String pid = psm.getProvider_id();
		String car= psm.getCar_service();
		String bike= psm.getBike_service();
		
		List<ProviderServiceModel> OldCarList = pudao.GetCarService(pid);
		List<ProviderServiceModel> OldBikeList = pudao.GetBikeService(pid);
		int cl =  OldCarList.size();
		int bl =  OldBikeList.size();
		String Cararray = "", Bikearray = "";
		for(int i=0; i<cl; i++){Cararray += OldCarList.get(i).getCar_service()+',';}
		for(int j=0; j<bl; j++){Bikearray += OldBikeList.get(j).getBike_service()+',';}
			
		
		String[] old_car_list =  Cararray.split(",");
		String[] old_bike_list =  Bikearray.split(",");
		String[] car_list = car.split(",");
		String[] bike_list = bike.split(",");
		
		List<String> oldCarList= new ArrayList<>(),newCarList = new ArrayList<>();
		List<String> oldBikeList = new ArrayList<>(), newBikeList = new ArrayList<>();
		
		for(String carServiceId : old_car_list) {
			if(!oldCarList.contains(carServiceId))
				oldCarList.add(carServiceId);
		}
		
		for(String bikeServiceId : old_bike_list) {
			if(!oldBikeList.contains(bikeServiceId))
			oldBikeList.add(bikeServiceId);
		}
		
		//oldCarList.forEach(System.out::print);
		for(String carId : car_list) {
			newCarList.add(carId);
		}
		
		for(String BikeId : bike_list) {
			newBikeList.add(BikeId);
		}
			
		List<String> tempList = new ArrayList<>(); 
		tempList.addAll(newCarList);
		
		List<String> tempList1 = new ArrayList<>();
		tempList1.addAll(newBikeList);
		
		newCarList.removeAll(oldCarList); //contains ids for adding
		oldCarList.removeAll(tempList); //contains ids for removing
		
		newBikeList.removeAll(oldBikeList);
		oldBikeList.removeAll(tempList1);
		
		System.out.print("-----to car add ---");
		newCarList.forEach(System.out::println); //for adding into db
		System.out.print("-----to car remove ---");
		oldCarList.forEach(System.out::println); // for removing from db isme jo ayga wo sare delete honge
		
		System.out.println("-----to bike add ---");
		newBikeList.forEach(System.out::println); //for adding into db
		System.out.print("-----to bike remove ---");
		oldBikeList.forEach(System.out::println); // for removing from db isme jo ayga wo sare delete honge
		
		
		/*System.out.println("car old :" + Cararray);
		System.out.println("Bike old:" + Bikearray);
		System.out.println("car new:" + car);
		System.out.println("Bike new:" + bike);*/
		
		for(int i=0; i<newCarList.size(); i++) //Add Car Servicess
		{
			if(!newCarList.contains(""))
			pudao.UpdateCarService(pid,newCarList.get(i));;
		}
		
		for(int i=0; i<oldCarList.size(); i++) //Delet Car Servicess
		{
			if(!oldCarList.contains(""))
			pudao.DeleteCarService(pid,oldCarList.get(i));
		}
		
		for(int i=0; i<newBikeList.size(); i++) //Add Bike Servicess
		{
			if(!newBikeList.contains(""))
			pudao.UpdateBikeService(pid,newBikeList.get(i));
		}
		
		for(int i=0; i<oldBikeList.size(); i++) //Delet Bike Servicess
		{
			if(!oldBikeList.contains(""))
			pudao.DeleteBikeService(pid,oldBikeList.get(i));
		}
		
		
		
		pudao.UpdateServiceNoImg(psm);
		return "redirect:/provider_profile"; 
		
	}
	

		 
	@RequestMapping(value="create_service_provider_members", method=RequestMethod.POST)
	public String Create_service_provider_members(ProviderMemberModel pmm,  @RequestParam CommonsMultipartFile file, HttpSession session)throws Exception {
		
		ServletContext context= session.getServletContext();
		
		String path = context.getRealPath("/resources/service_provider_images/images/");
		String filename= ucgdao.GetUniqueCode()+"-"+file.getOriginalFilename();
		//String profile_path = path  + filename;
		
		byte[] bytes = file.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close(); 
		pudao.CreateMember(pmm, filename);
		return "redirect:/provider_profile"; 
		
	}
	
	@RequestMapping(value="create_service_provider_members_no_img", method=RequestMethod.POST)
	public String Create_service_provider_members_no_img(ProviderMemberModel pmm){
		pudao.CreateMemberNoImg(pmm);
		return "redirect:/provider_profile"; 
	}
	
	
	@ResponseBody
	@RequestMapping(value="view_provider_team_member", method=RequestMethod.GET)
	public String View_provider_team_member(ProviderMemberModel pmm){
		Gson gson = new Gson();
		List<ProviderMemberModel> data = pudao.GetTeamMember(pmm.getProvider_id());
		String details = gson.toJson(data);
		return details; 
	}
	
	
	@ResponseBody
	@RequestMapping(value="edit_provider_team_member", method=RequestMethod.GET)
	public String Edit_provider_team_member(ProviderMemberModel pmm){
		Gson gson = new Gson();
		List<ProviderMemberModel> data = pudao.EditTeamMember(pmm.getTeam_member_id());
		String details = gson.toJson(data);
		return details; 
	}
	

	@RequestMapping(value="update_service_provider_team_img", method=RequestMethod.POST)
	public String Update_service_provider_team_img(ProviderMemberModel pmm,  @RequestParam CommonsMultipartFile file, HttpSession session)throws Exception {
		
		ServletContext context= session.getServletContext();
		
		String path = context.getRealPath("/resources/service_provider_images/images/");
		String filename= ucgdao.GetUniqueCode()+"-"+file.getOriginalFilename();
		//String profile_path = path  + filename;
		
		byte[] bytes = file.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close(); 
		pudao.UpdateMember(pmm, filename);
		return "redirect:/provider_profile"; 
		
	}
	
	@RequestMapping(value="update_service_provider_team_no_img", method=RequestMethod.POST)
	public String Update_service_provider_team_no_img(ProviderMemberModel pmm){
		pudao.UpdateMemberNoImg(pmm);
		return "redirect:/provider_profile"; 
	}
	
	
	
	
}
