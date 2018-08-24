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
		return am.getSlidingArticles(date);
	}

	@Override
	public List<Article> getRecArticles(String date) {
		// TODO Auto-generated method stub
		return am.getRecArticles(date);
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

}
