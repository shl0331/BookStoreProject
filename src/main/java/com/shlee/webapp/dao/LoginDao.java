package com.shlee.webapp.dao;

import com.shlee.webapp.dto.UserDto;

public interface LoginDao {
	public UserDto login(String userEmail);
}
