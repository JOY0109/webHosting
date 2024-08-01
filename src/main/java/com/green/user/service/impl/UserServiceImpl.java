package com.green.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private   UserDao  userDao;
	
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
	public UserVo getUser(int id) {
		
		UserVo vo = userDao.getUser(id);
				
		return vo;
	}

	@Override
	public void updateUser(UserVo vo) {
		userDao.updateUser(vo);
		
	}

	@Override
	public void deleteUser(int id) {
		userDao.deletUser(id);
		
	}
}
