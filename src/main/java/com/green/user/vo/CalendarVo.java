package com.green.user.vo;

import com.green.utils.JsonUtil;

public class CalendarVo {
	
	private String CALENDER_SEQ;
	private String EVENT_NAME;
	private String EVENT_DESCRIPTION;
	private String EVENT_LOCATION;
	private String ALL_DAY_YN;
	private String EVENT_START_DT;
	private String EVENT_END_DT;
	private String EVENT_START_TM;
	private String EVENT_END_TM;
	private String USER_SEQ;
	private String CREATE_TIME;
	
	
	public CalendarVo() {}
	public CalendarVo(String cALENDER_SEQ, String eVENT_NAME, String eVENT_DESCRIPTION, String eVENT_LOCATION,
			String aLL_DAY_YN, String eVENT_START_DT, String eVENT_END_DT, String eVENT_START_TM, String eVENT_END_TM,
			String uSER_SEQ, String cREATE_TIME) {
		super();
		CALENDER_SEQ = cALENDER_SEQ;
		EVENT_NAME = eVENT_NAME;
		EVENT_DESCRIPTION = eVENT_DESCRIPTION;
		EVENT_LOCATION = eVENT_LOCATION;
		ALL_DAY_YN = aLL_DAY_YN;
		EVENT_START_DT = eVENT_START_DT;
		EVENT_END_DT = eVENT_END_DT;
		EVENT_START_TM = eVENT_START_TM;
		EVENT_END_TM = eVENT_END_TM;
		USER_SEQ = uSER_SEQ;
		CREATE_TIME = cREATE_TIME;
	}



	public String getCALENDER_SEQ() {
		return CALENDER_SEQ;
	}



	public void setCALENDER_SEQ(String cALENDER_SEQ) {
		CALENDER_SEQ = cALENDER_SEQ;
	}



	public String getEVENT_NAME() {
		return EVENT_NAME;
	}



	public void setEVENT_NAME(String eVENT_NAME) {
		EVENT_NAME = eVENT_NAME;
	}



	public String getEVENT_DESCRIPTION() {
		return EVENT_DESCRIPTION;
	}



	public void setEVENT_DESCRIPTION(String eVENT_DESCRIPTION) {
		EVENT_DESCRIPTION = eVENT_DESCRIPTION;
	}



	public String getEVENT_LOCATION() {
		return EVENT_LOCATION;
	}



	public void setEVENT_LOCATION(String eVENT_LOCATION) {
		EVENT_LOCATION = eVENT_LOCATION;
	}



	public String getALL_DAY_YN() {
		return ALL_DAY_YN;
	}



	public void setALL_DAY_YN(String aLL_DAY_YN) {
		ALL_DAY_YN = aLL_DAY_YN;
	}



	public String getEVENT_START_DT() {
		return EVENT_START_DT;
	}



	public void setEVENT_START_DT(String eVENT_START_DT) {
		EVENT_START_DT = eVENT_START_DT;
	}



	public String getEVENT_END_DT() {
		return EVENT_END_DT;
	}



	public void setEVENT_END_DT(String eVENT_END_DT) {
		EVENT_END_DT = eVENT_END_DT;
	}



	public String getEVENT_START_TM() {
		return EVENT_START_TM;
	}



	public void setEVENT_START_TM(String eVENT_START_TM) {
		EVENT_START_TM = eVENT_START_TM;
	}



	public String getEVENT_END_TM() {
		return EVENT_END_TM;
	}



	public void setEVENT_END_TM(String eVENT_END_TM) {
		EVENT_END_TM = eVENT_END_TM;
	}



	public String getUSER_SEQ() {
		return USER_SEQ;
	}



	public void setUSER_SEQ(String uSER_SEQ) {
		USER_SEQ = uSER_SEQ;
	}



	public String getCREATE_TIME() {
		return CREATE_TIME;
	}



	public void setCREATE_TIME(String cREATE_TIME) {
		CREATE_TIME = cREATE_TIME;
	}



	@Override
	public String toString(){
		return JsonUtil.toString(this);
	}

}
