package com.shlee.webapp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.shlee.webapp.dto.BookDto;
import com.shlee.webapp.dto.BookFileDto;
import com.shlee.webapp.service.BookService;

@Controller
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class); 
	
	@Autowired
	BookService bookService;
	
	@RequestMapping(value= "/book/insert", method=RequestMethod.POST)
	@ResponseBody
	public int bookInsert(BookDto dto) {
		
		logger.debug("/book/insertFile");
		
		return bookService.bookInsert(dto);

	}
	
	@RequestMapping(value= "/book/insertFile", method=RequestMethod.POST)
	@ResponseBody
	public int bookInsert(BookDto dto, MultipartFile file) throws Exception {
		
		logger.debug("/book/insertFile");
		
		return bookService.bookInsertFile(dto, file);

	}
	
	/*
	 * @RequestMapping(value= "/book/list", method=RequestMethod.GET)
	 * 
	 * @ResponseBody public List<BookDto> bookList(int limit, int offset) {
	 * 
	 * logger.debug("/book/list");
	 * 
	 * return bookService.bookList(limit, offset);
	 * 
	 * }
	 */
	
	@RequestMapping(value = "/book/list", method = RequestMethod.GET)
	@ResponseBody
	public List<BookDto> bookList(int limit, int offset, String searchWord) {
	      
		logger.debug("/book/list");
	    System.out.println("bookController");  
	    return bookService.bookList(limit, offset, searchWord);
	 }
	   

	
	@RequestMapping(value= "/book/detail", method=RequestMethod.GET)
	@ResponseBody
	public BookDto bookDetail(int bookId) {
		
		logger.debug("/book/detail");
		
		return bookService.bookDetail(bookId);

	}
	
	@RequestMapping(value= "/book/update", method=RequestMethod.POST)
	@ResponseBody
	public int bookUpdate(BookDto dto, MultipartFile file) throws Exception {
		
		logger.debug("/book/updateFile");
		
		return bookService.bookUpdate(dto);

	}
	
	@RequestMapping(value= "/book/updateFile", method=RequestMethod.POST)
	@ResponseBody
	public int bookUpdateFile(BookDto dto, MultipartFile file) throws Exception {
		
		logger.debug("/book/updateFile");
		System.out.println("업데이트 컨드롤러 들어감");
		return bookService.bookUpdateFile(dto, file);

	}
	
	@RequestMapping(value= "/book/delete", method=RequestMethod.POST)
	@ResponseBody
	public int bookDelete(BookDto dto) {
		
		logger.debug("/book/delete");
		
		return bookService.bookDelete(dto);

	}
	
	/*
	 * @RequestMapping(value = "/book/list/totalCnt", method = RequestMethod.GET)
	 * 
	 * @ResponseBody public int bookListCnt() {
	 * 
	 * logger.debug("/book/listTotalCnt");
	 * 
	 * return bookService.bookListTotalCnt(); }
	 */
	
	@RequestMapping(value = "/book/list/totalCnt", method = RequestMethod.GET)
	   @ResponseBody
	   public int bookListCnt(String searchWord) {
	      
	      logger.debug("/book/listTotalCnt");
	      
	      return bookService.bookListTotalCnt(searchWord);
	   }
	
	
	 
	 
	 
}
