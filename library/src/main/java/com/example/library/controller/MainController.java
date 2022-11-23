package com.example.library.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.library.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService service;
	
	@GetMapping("/books/all")
	public List<Map<String, Object>> callAllBooks(){
		return service.getAllBooks();
	}
}