package com.shlee.webapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shlee.webapp.dto.BoardDto;
import com.shlee.webapp.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int userRegister(UserDto userDto) {
		
		String sql = 
				"INSERT INTO USER " + 
				" (USER_NAME, USER_PASSWORD, USER_EMAIL, USER_PROFILE_IMAGE_URL, USER_REGISTER_DATE, USER_ADDRESS, ADMIN_CHECK) " + 
				" VALUES (?, ?, ?, ?, now(), ?, ?)";
		System.out.println("sql 정상");
	     return jdbcTemplate.update(sql,userDto.getUserName(),userDto.getUserPassword(),userDto.getUserEmail(),
	             userDto.getProfileImageUrl(), userDto.getUserAddress(), userDto.getAdminCheck());
	}
	
	@Override
	public int boardDelete(BoardDto dto) {
		
		String sql = 
				"DELETE FROM BOARD " + 
				" WHERE BOARD_ID = ? ";
		System.out.println("DELETE 정상");
	     return jdbcTemplate.update(sql,dto.getBoardId());
	}
}
