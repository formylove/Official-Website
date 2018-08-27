package com.hiit.smm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hiit.smm.dao.ArticleMapper;
import com.hiit.smm.entity.Article;

@Service(value="articleService")
public class ArticleServiceImp implements ArticleService {
	@Autowired
	ArticleMapper am;

	public ArticleServiceImp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Article> getSlidingArticles(String date) {
		// TODO Auto-generated method stub
		List<Article> arts =am.getSlidingArticles(date);
		return arts;
	}

	@Override
	public List<Article> getRecArticles(String date) {
		List<Article> a =am.getRecArticles(date);
		if(a.size() == 2) {
			Article temp = new Article();
			temp.setAuthor("叁拾陆氪评论员");
			temp.setContent("空空如也");
			temp.setSummary("有鄙夫问于我，空空如也，我叩其两端而竭焉。");
			temp.setTitle("有鄙夫问于我，空空如也，我叩其两端而竭焉。");
			temp.setProfile("https://pic.36krcnd.com/201808/24005950/irja3skztghbg7un!heading");
			temp.setPosition(2);
			temp.setId(340);
			a.add(temp);
		}
		return a;
	}

	@Override
	public List<Article> getLatestArticles(String date) {
		// TODO Auto-generated method stub
		return am.getLatestArticles(date);
	}

	@Override
	public List<Article> getShortArticles(String date) {
		// TODO Auto-generated method stub
		return am.getShortArticles(date);
	}

	@Override
	public Article getArticle(int id) {
		// TODO Auto-generated method stub
		return am.getArticle(id);
	}

	@Override
	public void delectArticle(int id) {
		am.delectArticle(id);
	}

	@Override
	public void updateArticle(Article article) {
		am.updateArticle(article);
	}

	@Override
	public void addArticle(Article article) {
		am.addArticle(article);
	}

	@Override
	public String getLatestDate() {
		// TODO Auto-generated method stub
		return am.getLatestDate();
	}

	@Override
	public String[] getAllDate() {
		return am.getAllDate();
	}

	@Override
	public List<Article> getAllArticles() {
		// TODO Auto-generated method stub
		return am.getAllArticles();
	}

	@Override
	public List<Article> getArticlesByAuthor(String author) {
		// TODO Auto-generated method stub
		return am.getArticlesByAuthor(author);
	}

}
