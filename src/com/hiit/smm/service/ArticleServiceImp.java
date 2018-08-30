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
	public List<Article> getSlidingArticles() {
		// TODO Auto-generated method stub
		List<Article> arts =am.getSlidingArticles();
		return arts;
	}

	@Override
	public List<Article> getRecArticles() {
		return am.getRecArticles();
	}

	@Override
	public List<Article> getLatestArticles() {
		// TODO Auto-generated method stub
		return am.getLatestArticles();
	}

	@Override
	public List<Article> getShortArticles() {
		// TODO Auto-generated method stub
		return am.getShortArticles();
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
	public int addArticle(Article article) {
		return am.addArticle(article);
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
