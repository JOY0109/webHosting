package com.green.user.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.CalendarVo;
import com.green.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private   UserDao  userDao;
	
	@Override
	public int loginChk(HttpServletRequest request, HashMap<String, Object> hashMap) {

		int result = 0;
		
		result = userDao.loginChk(hashMap);
		
		return result;
	}
	
	@Override
	public List<UserVo> getUserList() {
		List<UserVo> list =  userDao.getUserList();
		
		return list;
	}

	@Override
	public void insertUser(UserVo vo) {
		userDao.insertUser(vo);
		
	}

	@Override
	public List<CalendarVo> getCalendarList() {
		List<CalendarVo> list = userDao.getCalendarList();
		
		//js에 보낼 형식으로 가공 
		
		return list;
	}
	
	@Override
	public void insertCalendar(CalendarVo vo) {
		userDao.insertCalendar(vo);
	}


}
