package com.shlee.webapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.shlee.webapp.dto.SaleDto;
import com.shlee.webapp.dto.UserDto;

public class SaleMapper implements RowMapper<SaleDto> {
	@Override
	public SaleDto mapRow(ResultSet rs, int count) throws SQLException {
		SaleDto dto = new SaleDto();
		dto.setSaleSeq(rs.getInt("sale_seq"));
		dto.setUserSeq(rs.getInt("user_seq"));
		dto.setUserName(rs.getString("user_name"));
		dto.setUserEmail(rs.getString("user_email"));
		dto.setUserAddress(rs.getString("user_address"));
		dto.setBookSeq(rs.getInt("book_seq"));
		dto.setBookName(rs.getString("book_name"));
		dto.setBookProfileImageUrl(rs.getString("book_profile_image_url"));
		dto.setBookQuantity(rs.getInt("book_quantity"));
		dto.setBookPrice(rs.getInt("book_price"));
		dto.setBookSaleDate(rs.getDate("book_sale_date"));
		return dto;
	}
}
