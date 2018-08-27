package com.hiit.smm.service;

import java.util.List;

import com.hiit.smm.entity.Article;

public interface ArticleService {
	public List<Article> getSlidingArticles(String date);
	public List<Article> getRecArticles(String date);
	public List<Article> getLatestArticles(String date);
	public List<Article> getShortArticles(String date);
	public List<Article> getAllArticles();
	public List<Article> getArticlesByAuthor(String author);
	public Article getArticle(int id);
	public void delectArticle(int id);
	public void updateArticle(Article article);
	public void addArticle(Article article);
	public String getLatestDate();
	public String[] getAllDate();
}
