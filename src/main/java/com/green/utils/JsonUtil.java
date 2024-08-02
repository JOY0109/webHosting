package com.green.utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonUtil {
	
	/**
	 * JSON 문자열을 Value Object 로 변환한다.
	 * 
	 * @param str
	 * @param objType
	 * @return
	 * @throws JsonProcessingException 
	 * @throws JsonMappingException 
	 */
	
	//JsonMappingException, JsonProcessingException
	public static <T> T toObject(String str, Class<T> objType) {
		if (str == null || str.length() == 0) {
			return null;
		}

		ObjectMapper mapper = new ObjectMapper();

		try {
			return mapper.readValue(str, objType);
		} catch (JsonMappingException e) {
			return null;
		} catch (JsonProcessingException e) {
			return null;
		}

	}
	
	/**
	 * Value Object 를 JSON 문자열로 변환한다.
	 * 
	 * @param obj
	 * @return
	 */
	public static String toString(Object obj) {
		if (obj == null) {
			return null;
		}
		
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			return mapper.writeValueAsString(obj);
		} catch (JsonProcessingException e) {
			return null;
		}

	}
	

}
