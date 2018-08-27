package com.hiit.smm.service;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hiit.smm.dao.AdminMapper;
import com.hiit.smm.entity.Admin;

@Service(value="adminService")
public class AdminServiceImp implements AdminService {
	@Autowired
	AdminMapper am;

	@Override
	public List<Admin> getAllAdmins() {
		// TODO Auto-generated method stub
		return am.getAllAdmins();
	}

	@Override
	public Admin getAdmin(int id) {
		// TODO Auto-generated method stub
		return am.getAdmin(id);
	}

	@Override
	public void deleteAdmin(int id) {
		// TODO Auto-generated method stub
		am.deleteAdmin(id);
	}

	@Override
	public void updateAdminPassword(Admin admin) {
		am.updateAdminPassword(admin);		
	}

	@Override
	public Admin checkin(Admin admin) {
		// TODO Auto-generated method stub
		Admin a =am.checkin(admin);
		return a;
	}

	@Override
	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		am.addAdmin(admin);
	}

	@Override
	public boolean isRegistered(String username) {
		// TODO Auto-generated method stub
		return am.isRegistered(username)>=1;
	}

	@Override
	public boolean isOnline(HttpServletRequest req) {
		Cookie[] cookies = req.getCookies();
		if(cookies !=null ) {
			
		for(Cookie c : cookies) {
			if(c.getName().equals("id")) {
				return true;
			}
		}
		}
		return false;
	}

	@Override
	public Admin who(HttpServletRequest req) {
		Cookie[] cookies = req.getCookies();
		if(cookies!=null) {
			
		for(Cookie c : cookies) {
			if(c.getName().equals("id")) {
				Admin a = am.getAdmin(Integer.valueOf(c.getValue()));
				return a;
			}
		}
		}
		return null;
	}

	@Override
	public void logout(HttpServletResponse resp,HttpServletRequest req) {
		Cookie[] cookies = req.getCookies();
		if(cookies!=null) {
		for(Cookie c : cookies) {
			if(c.getName().equals("id")) {
				c.setMaxAge(0);
				c.setPath("/");//必须加上path，不然他不知道删除哪个！！！
				c.setValue(null);
				resp.addCookie(c);
			}
		}
		}
		// T
	}

	


	
	

}
