package com.green.user.vo;

import com.green.utils.JsonUtil;

public class UserVo {
	
	private int id;
	private String name;
	private String tel;
	private String USER_SEQ;
	private String USER_ID;
	private String USER_PW;
	private String USER_NAME;
	private String USER_BIRTH;
	private String USER_TEL_NO;
	private String AUTH;
	private String LEVEL;
	private String JOIN_DATE;
	private String UPDATE_DATE;
	
	
	public UserVo() {}
	public UserVo(int id, String name, String tel,String USER_SEQ,String USER_ID,String USER_PW,String USER_NAME,String USER_BIRTH,  String USER_TEL_NO, String AUTH,String LEVEL,String JOIN_DATE,String UPDATE_DATE) {
		this.id = id;
		this.name = name;
		this.tel = tel;
		this.USER_SEQ	  =	USER_SEQ;
		this.USER_ID      = USER_ID;
		this.USER_PW      = USER_PW;
		this.USER_NAME    = USER_NAME;
		this.USER_BIRTH   = USER_BIRTH;
		this.USER_TEL_NO  = USER_TEL_NO;
		this.AUTH         = AUTH;
		this.LEVEL        = LEVEL;
		this.JOIN_DATE    = JOIN_DATE;
		this.UPDATE_DATE  = UPDATE_DATE;
	}
	
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getUSER_SEQ() {
		return USER_SEQ;
	}
	public void setUSER_SEQ(String uSER_SEQ) {
		USER_SEQ = uSER_SEQ;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_PW() {
		return USER_PW;
	}
	public void setUSER_PW(String uSER_PW) {
		USER_PW = uSER_PW;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getUSER_BIRTH() {
		return USER_BIRTH;
	}
	public void setUSER_BIRTH(String uSER_BIRTH) {
		USER_BIRTH = uSER_BIRTH;
	}
	public String getUSER_TEL_NO() {
		return USER_TEL_NO;
	}
	public void setUSER_TEL_NO(String uSER_TEL_NO) {
		USER_TEL_NO = uSER_TEL_NO;
	}
	public String getAUTH() {
		return AUTH;
	}
	public void setAUTH(String aUTH) {
		AUTH = aUTH;
	}
	public String getLEVEL() {
		return LEVEL;
	}
	public void setLEVEL(String lEVEL) {
		LEVEL = lEVEL;
	}
	public String getJOIN_DATE() {
		return JOIN_DATE;
	}
	public void setJOIN_DATE(String jOIN_DATE) {
		JOIN_DATE = jOIN_DATE;
	}
	public String getUPDATE_DATE() {
		return UPDATE_DATE;
	}
	public void setUPDATE_DATE(String uPDATE_DATE) {
		UPDATE_DATE = uPDATE_DATE;
	}
	
	
	@Override
	public String toString(){
		return JsonUtil.toString(this);
	}

}
