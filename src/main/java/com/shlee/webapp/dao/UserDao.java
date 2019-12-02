package com.shlee.webapp.dao;

import com.shlee.webapp.dto.BoardDto;
import com.shlee.webapp.dto.UserDto;

public interface UserDao {
	public int userRegister(UserDto userDto);
	public int boardDelete(BoardDto dto);
}
