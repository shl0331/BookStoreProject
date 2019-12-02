package com.shlee.webapp.service;

import com.shlee.webapp.dto.UserDto;

public interface LoginService {
	public UserDto login(String userEmail);
}
