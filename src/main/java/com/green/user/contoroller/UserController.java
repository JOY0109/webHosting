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
public class UserController{
	
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("/loginChk")
	public int loginChk(HttpServletRequest request) {
		System.out.println("jsp ok=====================================");

		int result = 0;
		
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
        ParameterInfo.getParameterInfo(request, hashMap);
        
        result = userService.loginChk(request,hashMap);
        
        System.out.println("result=====================================" + result);

		return result;
	}
	
	@RequestMapping("/User/List")
	public  String  list( Model model) {
		
		List<UserVo> list = userService.getUserList();
		model.addAttribute("user_list", list);	
		
		return "list_user";     
		
	}  
	
	@RequestMapping("/User/WriteForm")
	public  String  writeForm( ) {
		return "sign_up";     
	}  
	
	@RequestMapping("/User/Write")
	public  String  write ( UserVo vo ) {
		// db 저장
		userService.insertUser( vo );
		return "redirect:/User/List";     
	}  

	
}











