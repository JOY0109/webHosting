package com.green.user.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.UserDao;
import com.green.user.vo.CalendarVo;
import com.green.user.vo.UserVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private  SqlSession sqlSession;
	
	@Override
	public List<UserVo> getUserList() {
		List<UserVo> list = sqlSession.selectList("User.UserList"); 
		
		return list;
	}

	@Override
	public void insertUser(UserVo vo) {
		sqlSession.insert("User.UserInsert",vo);
	}

	@Override
	public int loginChk(HashMap<String, Object> hashMap) {

		int result = sqlSession.selectOne("User.loginChk",hashMap);
		
		return result;
	}
	
	@Override
	public List<CalendarVo> getCalendarList(){
		
		List<CalendarVo> list = sqlSession.selectList("calendar.calendarList");
		
		return list;
	}
	
	@Override
	public void insertCalendar(CalendarVo vo) {
		sqlSession.insert("calendar.calendarInsert",vo);
	}

	

}
