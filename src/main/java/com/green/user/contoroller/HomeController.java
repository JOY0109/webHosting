package com.green.user.contoroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.utils.ParameterInfo;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class HomeController{
	
	/*
	 * @Autowired private UserService userService;
	 */
	
	@RequestMapping("/")
	public  String  main() {
		return "main_index"; 
	}
	
	@RequestMapping("/home")
	public  String  home() {
		return "home"; 
	}

//	
//	@RequestMapping("/User/View")
//	public  String  view( int id, Model model ) {
//		// db 저장
//		UserVo vo = userService.getUser(id);
//		model.addAttribute("user", vo);
//		return "view";     
//	}  
//	
//	@RequestMapping("/User/UpdateForm")
//	public  String  updateForm( int id, Model model ) {
//		
//		UserVo vo = userService.getUser(id);
//		model.addAttribute("user",vo);
//		
//		return "update";     
//	}  
//	
//	@RequestMapping("/User/Update")
//	public  String  update( UserVo vo) {
//		//UserVo vo는 String name String tel int id 이거 세 개 다 적은 것과 같은 효과가 있음 
//		
//		userService.updateUser(vo);
//		
//		return "redirect:/User/List";     
//	}  
//	
//	@RequestMapping("/User/Delete")
//	public String delete(int id) {
//		
//		userService.deleteUser(id);
//		
//		return"redirect:/User/List";
//		
//	}
	
}











