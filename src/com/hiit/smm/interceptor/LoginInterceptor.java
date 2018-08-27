package com.hiit.smm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hiit.smm.entity.Admin;
import com.hiit.smm.service.AdminService;

public class LoginInterceptor implements HandlerInterceptor {
	@Autowired
	@Qualifier(value = "adminService")
	AdminService ad;

	public LoginInterceptor() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object arg2) throws Exception {
		String url = req.getRequestURI();
		if (url.toLowerCase().endsWith(".css") || url.toLowerCase().endsWith(".js") || url.toLowerCase().endsWith(".png") || url.toLowerCase().endsWith(".gif")) {
			return true;
		}
		boolean isOnline = ad.isOnline(req);
		if (url.toLowerCase().endsWith("/login/") && isOnline) {
			req.getRequestDispatcher("/").forward(req, resp);
		}
		if (url.toLowerCase().endsWith("/manage/") && !isOnline) {
			req.getRequestDispatcher("/login/").forward(req, resp);
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse resp, Object arg2, ModelAndView arg3)
			throws Exception {
		String url = req.getRequestURI();

		if (url.toLowerCase().endsWith(".css") || url.toLowerCase().endsWith(".js") || url.toLowerCase().endsWith(".png") || url.toLowerCase().endsWith(".gif")) {

		} else {
			Admin admin = ad.who(req);
			req.setAttribute("admin", admin);
		}

	}

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	}

}
