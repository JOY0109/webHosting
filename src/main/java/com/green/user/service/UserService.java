package com.green.user.service;

import java.util.List;

import com.green.user.vo.UserVo;

public interface UserService {

	List<UserVo> getUserList();

	void insertUser(UserVo vo);

	UserVo getUser(int id);

	void updateUser(UserVo vo);

	void deleteUser(int id);

}
