package com.example.library.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.library.mapper.MainMapper;

@Service
public class MainService {
	
	@Autowired
	private MainMapper mapper;
	
	public List<Map<String, Object>> getAllBooks(){
		return mapper.selectAllBooks();
	}
}
