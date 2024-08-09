package com.green.user.contoroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class HomeController{
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public  String  home() {
		return "main_index"; 
	}
	@RequestMapping("/test")
	public  String  test() {
		return "home"; 
	}
	
	@RequestMapping("/loginChk")
	public int loginChk() {
		int result = 0;
		System.out.println("jsp ok=====================================");
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











