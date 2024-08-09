package com.green.utils;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.ui.ModelMap;

public class ParameterInfo {


	//request에서 온 정보를 보여줄 페이지로 보낼때 사용
    @SuppressWarnings("rawtypes")
    public static HashMap<String, Object> getParameterInfo(HttpServletRequest request, HashMap<String, Object> hashMap,
            ModelMap model) {

        Enumeration enumeration = request.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            String parameterValue = StringUtils.isBlank(request.getParameter(parameterName)) ? "" : request.getParameter(parameterName);
            hashMap.put(parameterName, parameterValue);
            model.addAttribute(parameterName, parameterValue);

//            System.out.println("parameterName : [" + parameterName + "]   value : [" + parameterValue) + "]");
        }

        return hashMap;
    }

    //request에서 온 정보를 HashMap에 담을때 사용
    @SuppressWarnings("rawtypes")
    public static HashMap<String, Object> getParameterInfo(HttpServletRequest request,
    		HashMap<String, Object> hashMap) {

        Enumeration enumeration = request.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            String parameterValue = StringUtils.isBlank(request.getParameter(parameterName)) ? "" : request.getParameter(parameterName);
            hashMap.put(parameterName, parameterValue);

            System.out.println("parameterName : [" + parameterName + "]   value : [" + parameterValue + "]");
        }

        return hashMap;
    }
    
    //request에서 온 정보를 HashMap에 담을때 사용
    @SuppressWarnings("rawtypes")
    public static void getParameterInfo(HttpServletRequest request,
    		ModelMap model) {

        Enumeration enumeration = request.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            String parameterValue = StringUtils.isBlank(request.getParameter(parameterName)) ? "" : request.getParameter(parameterName);
            model.addAttribute(parameterName, parameterValue);

            System.out.println("model : [" + parameterName + "]   value : [" + parameterValue + "]");
        }
    }

    @SuppressWarnings("rawtypes")
    public static void getParameterInfoPage(HttpServletRequest request, ModelMap model) {

        Enumeration enumeration = request.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            String parameterValue = StringUtils.isBlank(request.getParameter(parameterName)) ? "" : request.getParameter(parameterName);
            if ("pageIndex".equals(parameterName))
                continue;
            model.addAttribute(parameterName, parameterValue);
//            System.out.println("parameterName : [" + parameterName + "]   value : [" + parameterValue + "]");
        }
    }

    public static void getParamMap(Map<String, Object> map, ModelMap model) {
        for (String key : map.keySet()) {
            model.addAttribute(key, map.get(key));
//            System.out.println("parameterName : [" + key + "]   value : [" + map.get(key) + "]");
        }
    }

    public static void getParamMapPage(Map<String, Object> map, ModelMap model) {
        for (String key : map.keySet()) {
            if ("pageIndex".equals(key))
                continue;
            model.addAttribute(key, map.get(key));
//            System.out.println("parameterName : [" + key + "]   value : [" + map.get(key) + "]");
        }
    }

}
