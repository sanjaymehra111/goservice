package com.goservice.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.goservice.dao.PasswordEncryptSha512;
import com.goservice.dao.ProviderProfileDaoIpml;
import com.goservice.dao.ProviderSignIn_UpDaoImple;
import com.goservice.dao.ProviderUpdateDaoImpl;
import com.goservice.model.ProviderMemberModel;
import com.goservice.model.ProviderProfileModel;
import com.goservice.model.ProviderServiceModel;
import com.goservice.model.SessionModel;

@Controller
public class ProviderFunctionContrroller 
{
	
	@Autowired
	UniqueCodeGenerator ucgdao;
	
	@Autowired
	ProviderUpdateDaoImpl pudao;
	
	@Autowired
	ProviderSignIn_UpDaoImple psdao;
	
	@Autowired
	PasswordEncryptSha512 pasenc;
	
	@Autowired
	ProviderProfileDaoIpml ppdao;

	@RequestMapping(value="service_provider_signin", method=RequestMethod.GET)
	public String service_provider_signin(@RequestParam String name, String contact, String email, String password, HttpSession session, RedirectAttributes redirectAttributes)
	{
		String encpass = pasenc.PasswordEncrypt(password);
		ProviderProfileModel pid = psdao.ProviderSignIn(name, contact, email, encpass);
		SessionModel sessionModel = new SessionModel();
		sessionModel.setUser_id(pid.getProvider_id());
		sessionModel.setSession_id(session.getId());
		sessionModel.setTime(session.getCreationTime());
		session.setAttribute("sessionData", sessionModel);
		redirectAttributes.addFlashAttribute("provider_id", pid.getProvider_id());
		return "redirect:/service_provider_dashboard";
	}
	
	@ResponseBody
	@RequestMapping(value="service_provider_signup", method=RequestMethod.GET)
	public String service_provider_signup(@RequestParam String email, String password, HttpSession session, RedirectAttributes redirectAttributes)
	{
		String encpass = pasenc.PasswordEncrypt(password);
		List<ProviderProfileModel> data = psdao.ProviderSignUp(email, encpass);
		if(data != null	)
		{
			if(data.get(0).getStatus().equals(""+1))
			{
				SessionModel sessionModel = new SessionModel();
				sessionModel.setUser_id(data.get(0).getProvider_id());
				sessionModel.setSession_id(session.getId());
				sessionModel.setTime(session.getCreationTime());
				session.setAttribute("sessionData", sessionModel);
				redirectAttributes.addFlashAttribute("provider_id", data.get(0).getProvider_id());
				return "redirect:/service_provider_dashboard";
			}
			else
			{
				return "status_closed";
						
			}
		}
		
		else
		{
			return "incorrect_id_pwd";
		}			
		
	}
	
	
	
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
	
	@ResponseBody
	@RequestMapping(value="GetProviderProfile")
	public String GetProviderProfile(@RequestParam String id){
		List<ProviderProfileModel> data  =ppdao.Provider_details(id);
		Gson gson = new Gson();
		String details = gson.toJson(data);
		return details;
	}
	
	
	@RequestMapping(value="update_service_provider_shop", method=RequestMethod.POST)
	public String Update_service_provider_shop(ProviderServiceModel psm,  @RequestParam ArrayList<MultipartFile> file, HttpSession session)throws Exception {
		int fs = file.size();
		String images= "";
		for(int i=0; i<fs; i++)
		{
			ServletContext context = session.getServletContext();
			String path = context.getRealPath("/resources/service_provider_images/images/");
			String[] filename= new String[fs];
			filename[i] = ucgdao.GetUniqueCode()+"-"+file.get(i).getOriginalFilename();
			images+=filename[i]+",";
			
			byte[] bytes=file.get(i).getBytes();
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename[i])));
			stream.write(bytes);
			stream.flush();
			stream.close();
					
		}
		pudao.UpdateShopDetails(psm, images);
		return "redirect:/provider_profile"; 
		
	}
	
	@RequestMapping(value="update_service_provider_shop_no_img", method=RequestMethod.POST)
	public String Update_service_provider_shop_no_img(ProviderServiceModel psm){
		pudao.UpdateShopDetailsNoImg(psm);
		return "redirect:/provider_profile"; 
	}
	
	
	@RequestMapping(value="update_provider_services", method=RequestMethod.POST)
	public String Update_provider_services(ProviderServiceModel psm){
		
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
		
		/*System.out.print("-----to car add ---");
		newCarList.forEach(System.out::println); //for adding into db
		System.out.print("-----to car remove ---");
		oldCarList.forEach(System.out::println); // for removing from db isme jo ayga wo sare delete honge
		System.out.println("-----to bike add ---");
		newBikeList.forEach(System.out::println); //for adding into db
		System.out.print("-----to bike remove ---");
		oldBikeList.forEach(System.out::println); // for removing from db isme jo ayga wo sare delete honge
		System.out.println("car old :" + Cararray);
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
		
		/*pudao.UpdateServiceNoImg(psm); */
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
	
	@RequestMapping(value="delete_team_member")
	public String Delete_team_member(@RequestParam String id){
		pudao.DeleteTeamMember(id);
		return "redirect:/provider_profile"; 
	}

	
	@ResponseBody
	@RequestMapping("provider_get_car_bike_service")
	public String Provider_get_car_service(@RequestParam String id)
	{
		Gson gson = new Gson();
		List<ProviderServiceModel> car_service = pudao.GetCarService(id);
		List<ProviderServiceModel> bike_service = pudao.GetBikeService(id);
		String car_list = gson.toJson(car_service);
		String bike_list = gson.toJson(bike_service);
		String final_list = "["+car_list+","+bike_list+"]";
		
		return final_list ;
	}
	
	@ResponseBody
	@RequestMapping("view_service_shop_details")
	public String View_service_shop_details(@RequestParam String id, HttpSession session)
	{
		Gson gson = new Gson();
		List<ProviderServiceModel> shop_details= pudao.GetShopDetails(id);
		String shop_list = gson.toJson(shop_details);
		return shop_list;
	}
	
	@ResponseBody
	@RequestMapping("get_count_list")
	public String Get_count_list(@RequestParam String id)
	{
		Gson gson = new Gson();
		List<ProviderServiceModel> car_service= pudao.CountCarService(id);
		List<ProviderServiceModel> bike_service= pudao.CountBikeService(id);
		List<ProviderMemberModel> team_service= pudao.CountTeamService(id);
		List<ProviderMemberModel> team_member = pudao.GetTeamMember(id);
		String car = gson.toJson(car_service);
		String bike = gson.toJson(bike_service);
		String team = gson.toJson(team_service);
		String member = gson.toJson(team_member);
		String details = '['+car+','+bike+','+team+','+member+']';
		return details;
	}

	
	@RequestMapping("/provider_logout")
	public String provider_logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/index";
	}
	
}	
