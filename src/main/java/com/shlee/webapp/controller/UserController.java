package com.shlee.webapp.controller;



import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shlee.webapp.HomeController;
import com.shlee.webapp.dto.UserDto;
import com.shlee.webapp.service.UserService;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
		
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/user/form", method = RequestMethod.POST)
	public String register(Locale locale, Model model) {
		
		logger.debug("/user/form");
		
		return "user/register";
	}
	
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	@ResponseBody
	public int registerForm(UserDto userDto) {
		
		logger.debug("/user");
		
		return userService.userRegister(userDto);
	}
}
