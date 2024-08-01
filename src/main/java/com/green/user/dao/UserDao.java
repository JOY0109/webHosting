package com.green.user.dao;

import java.util.List;

import com.green.user.vo.UserVo;

public interface UserDao {

	List<UserVo> getUserList();

	void insertUser(UserVo vo);

	UserVo getUser(int id);

	void updateUser(UserVo vo);

	void deletUser(int id);

}
