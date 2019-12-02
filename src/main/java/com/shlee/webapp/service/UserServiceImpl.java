package com.shlee.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shlee.webapp.dao.UserDao;
import com.shlee.webapp.dto.UserDto;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;
	
	@Override
	public int userRegister(UserDto userDto) {
		
		System.out.println("service Á¤»ó");	
		return userDao.userRegister(userDto);
		
	}
}
