package com.hiit.smm.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="login")
public class LoginAction {
	public String login(String name,String password,Model m) {

		return "success";
	
}
}
