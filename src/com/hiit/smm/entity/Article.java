package com.hiit.smm.entity;

import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;
import org.pegdown.PegDownProcessor;
import org.springframework.stereotype.Component;

@Component
public class Article {

	int id;
	String title;
	String profile;
	String summary;
	String content;
	String date;
	String author;
	int position;
	
	public Article() {
		Date d = new Date();
		this.date = String.format("%02d", d.getMonth()+1)+String.format("%02d", d.getDate());
	}

	public String getHtml() {
		String html = null;
		if(!StringUtils.isBlank(content)) {
			Parser parser = Parser.builder().build();
			Node md = parser.parse(content);
			HtmlRenderer rendered = HtmlRenderer.builder().build();
			html = rendered.render(md);
		}
		return html;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getPosition() {
		return position;
	}

	public void setPosition(int position) {
		this.position = position;
	}
	public String toString() {
		return title;
	}
	}
