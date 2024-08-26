package com.green.user.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.user.vo.CalendarVo;
import com.green.user.vo.UserVo;

public interface UserService {

	int loginChk(HttpServletRequest request, HashMap<String, Object> hashMap);
	
	List<UserVo> getUserList();

	void insertUser(UserVo vo);

	List<CalendarVo> getCalendarList();

	void insertCalendar(CalendarVo vo);

}
