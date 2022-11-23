package com.example.library.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.library.vo.BookVO;

@Mapper
public interface MainMapper {
	
	// 책 전체 리스트 조회
	public List<Map<String, Object>> selectAllBooks();
	
}