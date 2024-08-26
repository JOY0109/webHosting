package com.green.user.dao;

import java.util.HashMap;
import java.util.List;

import com.green.user.vo.CalendarVo;
import com.green.user.vo.UserVo;

public interface UserDao {

	List<UserVo> getUserList();

	void insertUser(UserVo vo);

	int loginChk(HashMap<String, Object> hashMap);

	List<CalendarVo> getCalendarList();

	void insertCalendar(CalendarVo vo);

}
