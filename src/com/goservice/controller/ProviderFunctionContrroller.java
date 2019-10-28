package com.goservice.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

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
