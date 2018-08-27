package com.hiit.smm.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hiit.smm.entity.Admin;

public interface AdminService {
	public List<Admin> getAllAdmins();
	public Admin getAdmin(int id);
	public void deleteAdmin(int id);
	public void updateAdminPassword(Admin admin);
	public Admin checkin(Admin admin);
	public void addAdmin(Admin admin);
	public boolean isOnline(HttpServletRequest req);
	public Admin who(HttpServletRequest req);
	public boolean isRegistered(String username);
	public void logout(HttpServletResponse resp,HttpServletRequest req);
}
