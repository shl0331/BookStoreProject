package com.shlee.webapp.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.shlee.webapp.dto.SaleDto;

@Repository
public class SaleDaoImpl implements SaleDao {

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
    public int saleInsert(SaleDto dto) {
      
       KeyHolder keyHolder = new GeneratedKeyHolder();
      
       String sql =
               "insert into sale ( "
             + "SALE_SEQ, USER_SEQ, USER_NAME, USER_EMAIL, USER_ADDRESS, "
             + "BOOK_SEQ, BOOK_NAME, BOOK_QUANTITY, BOOK_PRICE, BOOK_REGISTER_DATE) "
             + "values ( ?, ?, ?, ?, ?, ?, ?, ?, now())";
      
      
       jdbcTemplate.update(connection -> {
          PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
          ps.setInt(1, dto.getSaleSeq());
          ps.setInt(2, dto.getUserSeq());
          ps.setString(3, dto.getUserName());
          ps.setString(4, dto.getUserEmail());
          ps.setString(5, dto.getUserAddress());
          ps.setInt(6, dto.getBookSeq());
          ps.setString(7, dto.getBookName());
          ps.setInt(8, dto.getBookQuantity());
          ps.setInt(9, dto.getBookPrice());
          return ps;
       }, keyHolder);
    
       return keyHolder.getKey().intValue();

    }
 
 
 @Override
 public List<SaleDto> saleList(int limit, int offset) {
  // TODO Auto-generated method stub
  String sql =
    "select SQL_CALC_FOUND_ROWS A.* from ("
    + "select "
    		
    + "s.SALE_SEQ, "  
    + "s.USER_SEQ, "
    + "u.USER_NAME, "
    + "u.USER_EMAIL,"
    + "u.USER_ADDRESS,"
    + "s.BOOK_SEQ "
    + "s.BOOK_NAME, "
    + "s.BOOK_QUANTITY, "
    + "s.BOOK_PRICE, "
    + "s.BOOK_REGISTER_DATE "
    
    + "from sale s, user u "
    + "where s.USER_SEQ=u.USER_SEQ "
    + "order by SALE_ID DESC "
    + ") A LIMIT ? OFFSET ?;";
  
  return jdbcTemplate.query(sql,new SaleMapper(),limit,offset);
  
 }

 
 @Override
 public List<SaleDto> saleListSearchWord(int limit, int offset, String searchWord) {
    
    String likeSearchWord = "%" + searchWord + "%";

    String sql = 
          "SELECT SQL_CALC_FOUND_ROWS A.* FROM ( "
        + "select "
          		
    	+ "s.SALE_SEQ, "  
    	+ "s.USER_SEQ, "
    	+ "u.USER_NAME, "
    	+ "u.USER_EMAIL,"
    	+ "u.USER_ADDRESS,"
    	+ "s.BOOK_SEQ "
    	+ "s.BOOK_NAME, "
    	+ "s.BOOK_QUANTITY, "
    	+ "s.BOOK_PRICE, "
    	+ "s.BOOK_REGISTER_DATE "
        +  "	  FROM sale s, user u " 
        + "   WHERE s.USER_SEQ LIKE ? " 
        + "   AND s.USER_SEQ = u.USER_SEQ " 
        + "    ORDER BY SALE_ID DESC " 
        + ") A LIMIT ? OFFSET ?; ";

    return jdbcTemplate.query(sql, new SaleMapper(), likeSearchWord, limit, offset);
 }

 @Override
 public int saleListSearchWordTotalCnt(String searchWord) {
    
    String likeSearchWord = "%" + searchWord + "%";
    
    String sql = "SELECT count(*) FROM SALE WHERE TITLE LIKE ? ";
    
    return jdbcTemplate.queryForObject(sql, Integer.class, likeSearchWord);
 }
 
 
 
 
 
 @Override
 public SaleDto saleDetail(int saleSeq) {
  // TODO Auto-generated method stub
  
  String sql =
    
		 "select "
    		
    	+ "s.SALE_SEQ, "  
    	+ "s.USER_SEQ, "
    	+ "u.USER_NAME, "
    	+ "u.USER_EMAIL,"
    	+ "u.USER_ADDRESS,"
    	+ "s.BOOK_SEQ "
    	+ "s.BOOK_NAME, "
    	+ "s.BOOK_QUANTITY, "
    	+ "s.BOOK_PRICE, "
    	+ "s.BOOK_REGISTER_DATE "
        + "	  FROM sale s, user u " 
        + "   WHERE s.USER_SEQ = u.USER_SEQ " 
        + "   AND s.USER_SEQ = ? ";
      
      
  return jdbcTemplate.queryForObject(sql, new SaleMapper(),saleSeq);
 }

 @Override
 public int saleListTotalCnt() {
    
       String sql = "SELECT count(*) FROM SALE ";
      
       return jdbcTemplate.queryForObject(sql, Integer.class);
 }




 @Override
 public int saleUpdate(SaleDto dto) {
  // TODO Auto-generated method stub
	 System.out.println("SaleDaoImpl µé¾î¿È");
  String sql = "update sale "
    + " set BOOK_QUANTITY = ?"
    + " where SALE_SEQ = ?";
    
  return jdbcTemplate.update(sql,dto.getBookQuantity(),dto.getSaleSeq());
 }




 @Override
    public int saleDelete(SaleDto dto) {
       String sql =
               "delete from SALE "
             + "where SALE_SEQ = ? ";
      
       return jdbcTemplate.update(
             sql,
             dto.getSaleSeq()
       );
    }

} 