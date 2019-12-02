package com.shlee.webapp.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.shlee.webapp.dto.BookDto;
import com.shlee.webapp.dto.BookFileDto;

@Repository
public class BookDaoImpl implements BookDao {

 @Autowired
 JdbcTemplate jdbcTemplate;
 
 
 /*
  * @Override public int boardInsert(BoardDto dto) { // TODO Auto-generated
  * method stub String sql = "insert into board (" +
  * "USER_SEQ, TITLE, CONTENT, REG_DT, READ_COUNT)" +
  * " values(?, ?, ?, now(), 0)";
  *
  *
  * return
  * jdbcTemplate.update(sql,dto.getUserSeq(),dto.getTitle(),dto.getContent()); }
  */
 
 @Override
    public int bookInsert(BookDto dto) {
      
       KeyHolder keyHolder = new GeneratedKeyHolder();
      
       String sql =
               "insert into book ( "
             + "BOOK_Id, USER_SEQ, BOOK_NAME, BOOK_GENRE, "
             + "BOOK_AUTHOR, BOOK_PUBLISHER, BOOK_PROFILE_IMAGE_URL, "
             + "BOOK_REGISTER_DATE, BOOK_QUANTITY, BOOK_PRICE ) "
             + "values ( ?, ?, ?, ?, ?, ?, ?, now(), ?, ? )";
       System.out.println(sql);
      
      
       jdbcTemplate.update(connection -> {
          PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
          ps.setInt(1, dto.getBookId());
          ps.setInt(2, dto.getUserSeq());
          ps.setString(3, dto.getBookName());
          ps.setString(4, dto.getBookGenre());
          ps.setString(5, dto.getBookAuthor());
          ps.setString(6, dto.getBookPublisher());
          ps.setString(7, dto.getBookProfileImageUrl());
          ps.setInt(8, dto.getBookQuantity());
          ps.setInt(9, dto.getBookPrice());
          return ps;
       }, keyHolder);
    
       return keyHolder.getKey().intValue();

    }
 
 @Override
 public int bookInsertFile(BookFileDto dto) {

    String sql =
            "insert into book_file ( "
          + "BOOK_ID, FILE_NAME, FILE_SIZE, FILE_CONTENT_TYPE, FILE_URL) "
          + "values ( ?, ?, ?, ?, ? )";
   
    return jdbcTemplate.update(
          sql,
          dto.getBookId(),
          dto.getFileName(),
          dto.getFileSize(),
          dto.getFileContentType(),
          dto.getFileUrl()
    );
 }
 
 @Override
 public List<BookDto> bookList(int limit, int offset) {
  // TODO Auto-generated method stub
	 System.out.println("하게 디에오이므플");
  String sql =
    "select SQL_CALC_FOUND_ROWS A.* from ("
    + "select "
      
    + "b.BOOK_ID, "
    + "U.USER_SEQ, "
    + "U.USER_NAME, "
    + "b.BOOK_NAME,  "
    + "b.BOOK_GENRE, "
    + "b.BOOK_AUTHOR, "
    + "b.BOOK_PUBLISHER, "
    + "b.BOOK_PROFILE_IMAGE_URL, "
    + "b.BOOK_REGISTER_DATE, "
    + "b.BOOK_QUANTITY, "
    + "b.BOOK_PRICE, "
    + "(select file_url from book_file where book_id = b.book_id) FILE_URL "
    + "from book b, user u "
    + "where b.USER_SEQ=u.USER_SEQ "
    + "order by BOOK_ID DESC "
    + ") A LIMIT ? OFFSET ?;";
  
  return jdbcTemplate.query(sql,new BookMapper(),limit,offset);
  
 }

 
 @Override
 public List<BookDto> bookListSearchWord(int limit, int offset, String searchWord) {
    
    String likeSearchWord = "%" + searchWord + "%";

    String sql =
    	    "select SQL_CALC_FOUND_ROWS A.* from ( "
    	    + "select "
    	      
    	    + "b.BOOK_ID, "
    	    + "U.USER_SEQ, "
    	    + "U.USER_NAME, "
    	    + "b.BOOK_NAME,  "
    	    + "b.BOOK_GENRE, "
    	    + "b.BOOK_AUTHOR, "
    	    + "b.BOOK_PUBLISHER, "
    	    + "b.BOOK_PROFILE_IMAGE_URL, "
    	    + "b.BOOK_REGISTER_DATE, "
    	    + "b.BOOK_QUANTITY, "
    	    + "b.BOOK_PRICE, "
    	    + "(select file_url from book_file where book_id = b.book_id) FILE_URL "
    	    
    	    + "from book b, user u "
    	    + "where b.BOOK_NAME LIKE ? "
    	    + "AND b.USER_SEQ=u.USER_SEQ "
    	    + "order by BOOK_ID DESC "
    	    + ") A LIMIT ? OFFSET ?";

    return jdbcTemplate.query(sql, new BookMapper(), likeSearchWord, limit, offset);
 }

 @Override
 public int bookListSearchWordTotalCnt(String searchWord) {
    
    String likeSearchWord = "%" + searchWord + "%";
    
    String sql = "SELECT count(*) FROM book WHERE BOOK_NAME LIKE ? ";
    
    return jdbcTemplate.queryForObject(sql, Integer.class, likeSearchWord);
 }
 
 
 
 
 
 @Override
 public BookDto bookDetail(int bookId) {
  // TODO Auto-generated method stub
  
	 String sql =
	    	    "select " 
	    	    + "b.BOOK_ID, "
	    	    + "U.USER_SEQ, "
	    	    + "U.USER_NAME, "
	    	    + "b.BOOK_NAME,  "
	    	    + "b.BOOK_GENRE, "
	    	    + "b.BOOK_AUTHOR, "
	    	    + "b.BOOK_PUBLISHER, "
	    	    + "b.BOOK_PROFILE_IMAGE_URL, "
	    	    + "b.BOOK_REGISTER_DATE, "
	    	    + "b.BOOK_QUANTITY, "
	    	    + "b.BOOK_PRICE, "
	    	    + "(select file_url from book_file where book_id = b.book_id) FILE_URL "
	    	    
				+ "from book b, user u "
	    	    + "WHERE b.USER_SEQ=u.USER_SEQ "
	    	    + "and b.BOOK_ID = ? ";
	    	  
      
      
  return jdbcTemplate.queryForObject(sql, new BookMapper(),bookId);
 }

 @Override
 public int bookListTotalCnt() {
    
       String sql = "SELECT count(*) FROM book ";
      
       return jdbcTemplate.queryForObject(sql, Integer.class);
 }




 @Override
    public List<BookFileDto> bookDetailFileList(int bookId) {
       String sql =
             "   SELECT  BOOK_ID,  " +
             "         FILE_ID, " +
             "           FILE_NAME, " +
             "           FILE_SIZE, " +
             "           FILE_CONTENT_TYPE, " +
             "           FILE_URL, " +
             "           REG_DT " +
             "    FROM book_file " +
             "   WHERE BOOK_ID = ? ";
      
       return jdbcTemplate.query(sql, new BookFileListMapper(), bookId);
    }
 
 
 @Override
 public int bookUpdate(BookDto dto) {
  // TODO Auto-generated method stub
	 System.out.println("BookDaoImpl 들어옴");
  String sql = "update book "
    + " set BOOK_QUANTITY= ?"
    + " where BOOK_ID = ?";
    
  return jdbcTemplate.update(sql,dto.getBookQuantity(),dto.getBookId());
 }




 @Override
    public int bookDelete(BookDto dto) {
       String sql =
               "delete from book "
             + "where BOOK_ID = ? ";
      
       return jdbcTemplate.update(
             sql,
             dto.getBookId()
       );
    }
 
 @Override
    public int bookDeleteFile(int bookId) {
       String sql =
               "delete from book_file "
             + "where BOOK_ID = ? ";
      
       return jdbcTemplate.update(
             sql,
             bookId
       );
    }

 

 @Override
    public List<String> bookDeleteFileUrl(int bookId) {
       String sql =
               "select file_url from book_file "
             + "where BOOK_ID = ? ";
       return jdbcTemplate.queryForList(sql, String.class, bookId);
    }
 
} 