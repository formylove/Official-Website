package com.hiit.smm.dao;

import java.util.List;

import com.hiit.smm.entity.Admin;

public interface AdminMapper {
	public List<Admin> getAllAdmins();
	public Admin getAdmin(int id);
	public void deleteAdmin(int id);
	
	//返回数字表明更新的row数目
	public int updateAdminPassword(Admin admin);
	public Admin checkin(Admin admin);
	public void addAdmin(Admin admin);
	public int isRegistered(String username);
}
