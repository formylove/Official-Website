package com.hiit.smm.entity;

public class Admin {
	public int id;
	public String name;
	public String password;

	public Admin(String name, String password) {
		this.name = name;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String toString() {
		return name;
	}
}
