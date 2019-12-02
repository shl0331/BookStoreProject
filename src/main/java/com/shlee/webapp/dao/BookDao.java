package com.shlee.webapp.dao;

import java.util.List;

import com.shlee.webapp.dto.BookDto;
import com.shlee.webapp.dto.BookFileDto;

public interface BookDao {
	int bookInsert(BookDto dto);
	public int bookInsertFile(BookFileDto fileDto);
	List<BookDto> bookList(int limit, int offset);
	
	public List<BookDto> bookListSearchWord(int limit, int offset, String searchWord);
	public int bookListSearchWordTotalCnt(String searchWord);
	
	int bookListTotalCnt();
	BookDto bookDetail(int bookId);
	public int bookUpdate(BookDto dto);
	public int bookDelete(BookDto dto);
	public int bookDeleteFile(int bookId);
	public List<BookFileDto> bookDetailFileList(int bookId);
	public List<String> bookDeleteFileUrl(int bookId);
	
}
