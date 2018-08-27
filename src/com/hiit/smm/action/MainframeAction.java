package com.hiit.smm.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hiit.smm.entity.Admin;
import com.hiit.smm.entity.Article;
import com.hiit.smm.service.AdminService;
import com.hiit.smm.service.ArticleService;

@Controller
@RequestMapping(value = "/")
public class MainframeAction {
	@Autowired
	@Qualifier(value = "articleService")
	ArticleService as;
	@Autowired
	@Qualifier(value = "adminService")
	AdminService ad;

	public MainframeAction() {
	}

	@RequestMapping(value = "/a/{id}")
	String showArticle(Model m, @PathVariable int id) {// @PathVariable 是必须的
		
		String[] all_date = as.getAllDate();
		m.addAttribute("all_date", all_date);

		m.addAttribute("article", as.getArticle(id));
		return "article";
	}

	@RequestMapping(value = "/manage/")
	String manage(Model m) {
		return "manage";
	}


	@RequestMapping(value = "/login/")
	String login(Model m) {
		String[] all_date = as.getAllDate();
		m.addAttribute("all_date", all_date);
		return "login";
	}

	@RequestMapping(value = "{date}")
	String extractPage(Model m, @PathVariable(value = "date") String date) {
		List<Article> a_slider = as.getSlidingArticles(date);
		List<Article> a_rec = as.getRecArticles(date);
		List<Article> a_latest = as.getLatestArticles(date);
		List<Article> a_short = as.getShortArticles(date);
		
		String[] all_date = as.getAllDate();
		m.addAttribute("all_date", all_date);

		m.addAttribute("slider", a_slider);
		m.addAttribute("rec", a_rec);
		m.addAttribute("latest", a_latest);
		m.addAttribute("a_short", a_short);

		return "homepage";
	}

	@RequestMapping(value = "/")
	String extractPage(Model m) {
		String date = as.getLatestDate();
		List<Article> a_slider = as.getSlidingArticles(date);
		List<Article> a_rec = as.getRecArticles(date);
		List<Article> a_latest = as.getLatestArticles(date);
		List<Article> a_short = as.getShortArticles(date);
		
		String[] all_date = as.getAllDate();
		m.addAttribute("all_date", all_date);

		m.addAttribute("a_short", a_short);
		m.addAttribute("rec", a_rec);
		m.addAttribute("latest", a_latest);
		m.addAttribute("slider", a_slider);
		System.out.println("slider   " + a_slider.size());
		System.out.println("short   " + a_short.size());
		System.out.println("rec   " + a_rec.size());
		return "homepage";
	}

	@ResponseBody//注释此方法未ajax方法
	@RequestMapping(value="scrape")
	public String scrape() {
		String command = "python 36kr.py";//\n不会报错\p报错，需要转义 python /c start 
		try {
			System.out.println("Creating Process...");
			ProcessBuilder pb = new ProcessBuilder("python","36kr.py");
			pb.directory(new File("O:\\python\\"));
			Process pr = pb.start();
			pr.waitFor();
			System.out.println("Waiting over.");
		} catch (IOException | InterruptedException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}
	@RequestMapping(value = "/checkin/")
		@ResponseBody//注释此方法未ajax方法,作用于return对象，将返回对象写在body区
	String checkin(Admin admin,HttpServletResponse resp,HttpServletRequest req) {
		Admin curAdmin =ad.checkin(admin);
		if(curAdmin == null) {
			
			
			return "fail";
		}else {
			Cookie cookie = new Cookie("id",String.valueOf(curAdmin.getId()));
			cookie.setMaxAge(60*5*100);
			cookie.setPath("/");
			resp.addCookie(cookie);

			return "success";
		}
//				resp.sendRedirect(request.getContextPath() + "/homepage.jsp");
//		request.setAttribute ( "users", users) ;   //对request 进制预处理准备工作
	}
	
	@RequestMapping(value = "/checkout/")
	@ResponseBody
	String checkout(HttpServletResponse resp,HttpServletRequest req) {
		ad.logout(resp,req);
		return "success";
	}
	@RequestMapping(value = "/admins/")
	@ResponseBody
	List<Admin> admins(HttpServletResponse resp,HttpServletRequest req) {
		List<Admin> as = ad.getAllAdmins();
		return as;
	}
	@RequestMapping(value = "/articles/")
	@ResponseBody
	List<Article> articles(HttpServletResponse resp,HttpServletRequest req) {
		List<Article> arts = as.getAllArticles();
		return arts;
	}
	@RequestMapping(value = "/delart/{id}")
	@ResponseBody
	String delart(@PathVariable int id,HttpServletResponse resp,HttpServletRequest req) {
		as.delectArticle(id);
		return "success";
	}
	@RequestMapping(value = "/deladm/{id}")
	@ResponseBody
	String deladm(@PathVariable int id,HttpServletResponse resp,HttpServletRequest req) {
		ad.deleteAdmin(id);
		return "success";
	}
	@RequestMapping(value = "/addadm/")
	@ResponseBody
	String addadm(Admin admin,HttpServletResponse resp,HttpServletRequest req) {
		ad.addAdmin(admin);
		return "success";
	}
	
	@RequestMapping(value = "/updatepsd/{id}/")
	@ResponseBody
	String updatepsd(@PathVariable(value = "id") int id ,String password,HttpServletResponse resp,HttpServletRequest req) {
		Admin admin = new Admin(id, password);
		ad.updateAdminPassword(admin);
		ad.logout(resp, req);
		return "success";
	}
	@RequestMapping(value = "/addart/")
	@ResponseBody
	String addart(Article art,HttpServletResponse resp,HttpServletRequest req) {
		
		art.setAuthor(ad.who(req).getUsername());
		as.addArticle(art);
		return "success";
	}
}
