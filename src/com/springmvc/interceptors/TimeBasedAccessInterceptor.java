package com.springmvc.interceptors;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class TimeBasedAccessInterceptor extends HandlerInterceptorAdapter {

	private int openingTime;
	private int closeTime;

	public void setOpeningTime(int openingTime) {
		this.openingTime = openingTime;
	}

	public void setCloseTime(int closeTime) {
		this.closeTime = closeTime;
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (!request.getServletPath().equals("/close")) {
			
			Calendar cal = Calendar.getInstance();
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		if (openingTime <= hour && hour < closeTime) {
		return true;
		}
		response.sendRedirect(request.getContextPath() + "/closed");
		return false;
	}else {
		return true;

	}
	}}
