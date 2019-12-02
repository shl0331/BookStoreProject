package com.shlee.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shlee.webapp.dao.LoginDao;
import com.shlee.webapp.dto.UserDto;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginDao loginDao;
	
	@Override
	public UserDto login(String userEmail) {
		
		return loginDao.login(userEmail);
	}
}
