package com.hiit.smm.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hiit.smm.entity.Article;
import com.hiit.smm.service.ArticleService;

@Controller
@RequestMapping(value = "/")
public class MainframeAction {
	@Autowired
	@Qualifier(value = "articleService")
	ArticleService as;

	public MainframeAction() {
	}
	@RequestMapping(value="/a/{id}")
	String showArticle(Model m,@PathVariable int id) {//@PathVariable 是必须的
		System.out.println("id" + id);
		m.addAttribute("article", as.getArticle(id));
		return "article";	
	}
	@RequestMapping(value="/manage/")
	String manage(Model m) {
		return "manage";
	}
	@RequestMapping(value="/login/")
	String login(Model m) {
		return "login";
	}
	@RequestMapping(value = "{date}")
	String extractPage(Model m, @PathVariable(value = "date") String date) {
		List<Article> a_slider = as.getSlidingArticles(date);
		List<Article> a_rec = as.getRecArticles(date);
		List<Article> a_latest = as.getLatestArticles(date);
		List<Article> a_short = as.getShortArticles(date);
		
		m.addAttribute("slider",a_slider);
		m.addAttribute("rec",a_rec);
		m.addAttribute("latest",a_latest);
		m.addAttribute("a_short",a_short);
		
		return "homepage";
	}

	@RequestMapping(value = "/")
	String extractPage(Model m) {
		String date = as.getLatestDate();
		List<Article> a_slider = as.getSlidingArticles(date);
		List<Article> a_rec = as.getRecArticles(date);
		List<Article> a_latest = as.getLatestArticles(date);
		List<Article> a_short = as.getShortArticles(date);
		
		m.addAttribute("a_short",a_short);
		m.addAttribute("rec",a_rec);
		m.addAttribute("latest",a_latest);
		m.addAttribute("slider",a_slider);
		System.out.println("short   "+a_short.size());
		return "homepage";
	}

}
