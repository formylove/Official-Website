package com.hiit.smm.entity;

import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;

public class Admin {
	public int id;
	public String username;
	public String password;
	public String portrait;
	public int level;

	public Admin() {
		String[] p = {"deer","ball","man","bird"};
		this.portrait =p[(int) Math.floor(Math.random()*p.length)];
		this.level=1;
	}
	public Admin(String username, String password) {
		String[] p = {"deer","ball","man","bird"};
		this.portrait =p[(int) Math.floor(Math.random()*4)];
		this.level=1;
		this.username = username;
		this.password = password;
	}
	public Admin(int id, String password) {
		this.id =id;
		this.password = password;
	}
	public String getPortrait() {
		return portrait;
	}

	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		System.out.println("dddd"+password);
		return password;
	}

	public void setPassword(String password) {
		Logger l = Logger.getLogger(Admin.class);
		l.info("set password:"+password);
		this.password = password;
	}
	public String toString() {
		return username;
	}
}
