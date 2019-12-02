package com.shlee.webapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.shlee.webapp.dto.UserDto;

public class UserMapper implements RowMapper<UserDto> {
	@Override
	public UserDto mapRow(ResultSet rs, int count) throws SQLException {
		UserDto dto = new UserDto();
		dto.setUserSeq(rs.getInt("user_seq"));
		dto.setUserName(rs.getString("user_name"));
		dto.setUserPassword(rs.getString("user_password"));
		dto.setUserEmail(rs.getString("user_email"));
		dto.setUserRegisterDate(rs.getDate("user_register_date"));
		dto.setProfileImageUrl(rs.getString("user_profile_image_url"));
		dto.setUserAddress(rs.getString("user_address"));
		dto.setAdminCheck(rs.getString("admin_check"));
		return dto;
	}
}
