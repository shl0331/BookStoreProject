package com.shlee.webapp.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.shlee.webapp.dto.BookDto;

public interface BookService {
	public int bookInsert(BookDto dto);
	public int bookInsertFile(BookDto dto, MultipartFile file) throws Exception;
	
	public List<BookDto> bookList(int limit, int offset, String searchWord);
	public int bookListTotalCnt(String searchWord);
	
	
	public List<BookDto> bookList(int limit, int offset);
	int bookListTotalCnt();
	public BookDto bookDetail(int bookId);
	public int bookUpdate(BookDto dto) throws Exception;
	public int bookUpdateFile(BookDto dto, MultipartFile file) throws Exception;
	public int bookDelete(BookDto dto);
}
