package com.shlee.webapp.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.shlee.webapp.controller.LoginController;
import com.shlee.webapp.dao.BookDao;
import com.shlee.webapp.dto.BookDto;
import com.shlee.webapp.dto.BookFileDto;

@Service
public class BookServiceImpl implements BookService {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	BookDao bookDao;

	String bookUploadRealPath = "D:" + File.separator + "Program Files" + File.separator + "Java" + File.separator
			+ "jdk1.8.0_221" + File.separator + "workplace" + File.separator + "BookStoreProject" + File.separator
			+ "src" + File.separator + "main" + File.separator + "webapp" + File.separator + "resources"
			+ File.separator + "bookFiles";

	String bookFileFolder = "resources/bookFiles";

	String bookDeleteRealPath = "D:" + File.separator + "Program Files" + File.separator + "Java" + File.separator
			+ "jdk1.8.0_221" + File.separator + "workplace" + File.separator + "BookStoreProject" + File.separator
			+ "src" + File.separator + "main" + File.separator + "webapp" + File.separator + "resources"
			+ File.separator + "bookFiles";

	@Override
	@Transactional("txManager")
	public int bookInsertFile(BookDto dto, MultipartFile file) throws Exception {

		int bookId = bookDao.bookInsert(dto);
		logger.debug("bookId : " + bookId);

		if (file != null) {
			// Random Fild Id
			UUID uuid = UUID.randomUUID();

			// file extention
			String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()

			String savingFileName = uuid + "." + extension;

			File saveFile = new File(bookUploadRealPath, savingFileName);
			file.transferTo(saveFile);

			// File Save to folder
			BookFileDto fileDto = new BookFileDto();
			fileDto.setFileContentType(file.getContentType());

			logger.debug("fileDto.getFileContentType : " + fileDto.getFileContentType());

			fileDto.setFileName(file.getOriginalFilename());
			fileDto.setFileSize(file.getSize());

			String bookFileUrl = bookFileFolder + "/" + savingFileName;
			fileDto.setFileUrl(bookFileUrl);

			fileDto.setBookId(bookId);

			bookDao.bookInsertFile(fileDto);
		}

		return bookId;
	}

	@Override
	public int bookInsert(BookDto dto) {
		// TODO Auto-generated method stub
		return bookDao.bookInsert(dto);
	}
	
	
	@Override
	   public List<BookDto> bookList(int limit, int offset, String searchWord) {
	      if("".equals(searchWord)) {
	    	  System.out.println("하게 서비스임플라이");
	         return bookDao.bookList(limit, offset);
	      }else {
	    	  System.out.println("하게 서비스임플라이2222");
	         return bookDao.bookListSearchWord(limit, offset, searchWord);
	      }
	   }
	   
	   @Override
	   public int bookListTotalCnt(String searchWord) {
	      
	      if("".equals(searchWord)) {
	         return bookDao.bookListTotalCnt();
	      }else {
	         return bookDao.bookListSearchWordTotalCnt(searchWord);
	      }
	   }
	
	
	@Override
	public List<BookDto> bookList(int limit, int offset) {
		// TODO Auto-generated method stub
		return bookDao.bookList(limit, offset);
	}

	/*
	 * @Override public BookDto bookDetail(int bookId) { // TODO Auto-generated
	 * method stub BookDto dto= bookDao.bookDetail(bookId); List<BookFileDto>
	 * fileList= bookDao.bookDetailFileList(bookId);
	 *
	 * return bookDao.BookDetail(bookId); }
	 */

	@Override
	public BookDto bookDetail(int bookId) {
		System.out.println("서비스 들어감");
		BookDto dto = bookDao.bookDetail(bookId);
		System.out.println("BookDto dto = bookDao.bookDetail(bookId); 성공");

		List<BookFileDto> fileList = bookDao.bookDetailFileList(bookId);

		System.out.println("List<BookFileDto> fileList = bookDao.bookDetailFileList(bookId); 성공");
		dto.setFileList(fileList);

		System.out.println("서비스 성공");
		return dto;
	}

	@Override
	public int bookListTotalCnt() {
		int cnt = bookDao.bookListTotalCnt();
		System.out.println(cnt);
		return cnt;
	}

	@Override
	public int bookUpdate(BookDto dto) throws Exception {
		// TODO Auto-generated method stub
		return bookDao.bookUpdate(dto);
	}

	@Override
	@Transactional("txManager")
	public int bookDelete(BookDto dto) {
		List<String> fileUrlList = bookDao.bookDeleteFileUrl(dto.getBookId());
		for (String fileUrl : fileUrlList) {
			File file = new File(bookDeleteRealPath, fileUrl);
			logger.debug("file: " + file.getName());
			if (file.exists()) {
				file.delete();
			}
		}
		bookDao.bookDeleteFile(dto.getBookId());
		int ret = bookDao.bookDelete(dto);

		return ret;
	}

	@Override
	@Transactional("txManager")
	public int bookUpdateFile(BookDto dto, MultipartFile file) throws Exception {

		System.out.println("업데이트 서비스 들어감");
		int ret = bookDao.bookUpdate(dto);

		if (file != null) {
			// delete first
			bookDao.bookDeleteFile(dto.getBookId());

			// Random Fild Id
			UUID uuid = UUID.randomUUID();

			// file extention
			String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()

			String savingFileName = uuid + "." + extension;

			File saveFile = new File(bookUploadRealPath, savingFileName);
			file.transferTo(saveFile);

			// File Save to folder
			BookFileDto fileDto = new BookFileDto();
			fileDto.setFileContentType(file.getContentType());

			logger.debug("fileDto.getFileContentType : " + fileDto.getFileContentType());

			fileDto.setFileName(file.getOriginalFilename());
			fileDto.setFileSize(file.getSize());

			String bookFileUrl = bookFileFolder + "/" + savingFileName;
			fileDto.setFileUrl(bookFileUrl);

			fileDto.setBookId(dto.getBookId());

			bookDao.bookInsertFile(fileDto);
		}

		return ret;
	}

}
