package com.green.user.vo;

import com.green.utils.JsonUtil;

public class UserVo {
	
	private String USER_SEQ;
	private String USER_NAME;
	private String USER_EMP_NUM;
	private String USER_BIRTH;
	private String USER_ID;
	private String USER_PW;
	private String USER_TEL1;
	private String USER_TEL2;
	private String USER_DEP_NUM;
	private String USER_NICK;
	private String AUTH;
	private String LEVEL;
	private String JOIN_DATE;
	private String UPDATE_DATE;
	private String ROLE_NAME;

	
	
	public UserVo() {}
	public UserVo(String USER_SEQ ,String USER_NAME ,String USER_EMP_NUM ,String USER_BIRTH ,String USER_ID ,String USER_PW ,String USER_TEL1 ,String USER_TEL2 ,String USER_DEP_NUM ,String USER_NICK 
			,String AUTH ,String LEVEL ,String JOIN_DATE ,String UPDATE_DATE,String ROLE_NAME ) {
		this.USER_SEQ		 = USER_SEQ;
		this.USER_NAME       = USER_NAME;
		this.USER_EMP_NUM    = USER_EMP_NUM;
		this.USER_BIRTH      = USER_BIRTH;
		this.USER_ID         = USER_ID;
		this.USER_PW         = USER_PW;
		this.USER_TEL1       = USER_TEL1;
		this.USER_TEL2       = USER_TEL2;
		this.USER_DEP_NUM    = USER_DEP_NUM;
		this.USER_NICK       = USER_NICK;
		this.AUTH            = AUTH;
		this.LEVEL           = LEVEL;
		this.JOIN_DATE       = JOIN_DATE;
		this.UPDATE_DATE     = UPDATE_DATE;
		this.ROLE_NAME       = ROLE_NAME;
	}
	
	
	
	public String getROLE_NAME() {
		return ROLE_NAME;
	}
	public void setROLE_NAME(String rOLE_NAME) {
		ROLE_NAME = rOLE_NAME;
	}
	public String getUSER_SEQ() {
		return USER_SEQ;
	}
	public void setUSER_SEQ(String uSER_SEQ) {
		USER_SEQ = uSER_SEQ;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getUSER_EMP_NUM() {
		return USER_EMP_NUM;
	}
	public void setUSER_EMP_NUM(String uSER_EMP_NUM) {
		USER_EMP_NUM = uSER_EMP_NUM;
	}
	public String getUSER_BIRTH() {
		return USER_BIRTH;
	}
	public void setUSER_BIRTH(String uSER_BIRTH) {
		USER_BIRTH = uSER_BIRTH;
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
	public String getUSER_TEL1() {
		return USER_TEL1;
	}
	public void setUSER_TEL1(String uSER_TEL1) {
		USER_TEL1 = uSER_TEL1;
	}
	public String getUSER_TEL2() {
		return USER_TEL2;
	}
	public void setUSER_TEL2(String uSER_TEL2) {
		USER_TEL2 = uSER_TEL2;
	}
	public String getUSER_DEP_NUM() {
		return USER_DEP_NUM;
	}
	public void setUSER_DEP_NUM(String uSER_DEP_NUM) {
		USER_DEP_NUM = uSER_DEP_NUM;
	}
	public String getUSER_NICK() {
		return USER_NICK;
	}
	public void setUSER_NICK(String uSER_NICK) {
		USER_NICK = uSER_NICK;
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
