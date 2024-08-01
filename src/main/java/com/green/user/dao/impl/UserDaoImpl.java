package com.green.user.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.UserDao;
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
	public UserVo getUser(int id) {
		UserVo vo = sqlSession.selectOne("User.GetUser",id); 
		return vo;
	}

	@Override
	public void updateUser(UserVo vo) {
		sqlSession.update("User.UserUpdate",vo);
		
	}

	@Override
	public void deletUser(int id) {
		sqlSession.delete("User.Delete",id);
		
	}
	
	

}
