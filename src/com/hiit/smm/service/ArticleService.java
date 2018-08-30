package com.hiit.smm.service;

import java.util.List;

import com.hiit.smm.entity.Article;

public interface ArticleService {
	public List<Article> getSlidingArticles();
	public List<Article> getRecArticles();
	public List<Article> getLatestArticles();
	public List<Article> getShortArticles();
	public List<Article> getAllArticles();
	public List<Article> getArticlesByAuthor(String author);
	public Article getArticle(int id);
	public void delectArticle(int id);
	public void updateArticle(Article article);
	public int addArticle(Article article);
	public String getLatestDate();
	public String[] getAllDate();
}
