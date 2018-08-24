package com.hiit.smm.dao;

import java.util.List;

import com.hiit.smm.entity.Article;

public interface ArticleMapper {
	public List<Article> getSlidingArticles(String date);
	public List<Article> getRecArticles(String date);
	public List<Article> getLatestArticles(String date);
	public List<Article> getShortArticles(String date);
	public Article getArticle(int id);
	public void delectArticle(int id);
	public void updateArticle(Article article);
	public void addArticle(Article article);
	public String getLatestDate();
}
