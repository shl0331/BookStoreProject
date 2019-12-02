package com.shlee.webapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.shlee.webapp.dto.BookDto;
import com.shlee.webapp.dto.UserDto;

public class BookMapper implements RowMapper<BookDto> {
	@Override
	public BookDto mapRow(ResultSet rs, int count) throws SQLException {
		BookDto dto = new BookDto();
		dto.setBookId(rs.getInt("book_id"));
		dto.setUserSeq(rs.getInt("user_seq"));
		dto.setUserName(rs.getString("user_name"));
		dto.setBookName(rs.getString("book_name"));
		dto.setBookGenre(rs.getString("book_genre"));
		dto.setBookAuthor(rs.getString("book_author"));
		dto.setBookPublisher(rs.getString("book_publisher"));
		dto.setBookProfileImageUrl(rs.getString("book_profile_image_url"));
		dto.setBookRegisterDate(rs.getDate("book_register_date"));
		dto.setBookQuantity(rs.getInt("book_quantity"));
		dto.setBookPrice(rs.getInt("book_price"));
		dto.setFileUrl(rs.getString("file_url"));
		return dto;
	}
}
