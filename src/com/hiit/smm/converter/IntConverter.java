package com.hiit.smm.converter;

import org.springframework.core.convert.converter.Converter;

public class IntConverter implements Converter<String, Integer> {

	public IntConverter() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Integer convert(String s) {
		return Integer.valueOf(s);
	}

}
