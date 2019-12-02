package com.shlee.webapp.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.cj.Session;
import com.shlee.webapp.dto.UserDto;
import com.shlee.webapp.service.LoginService;
import com.shlee.webapp.service.UserService;

@Controller
public class LoginController {

   private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
   
   @Autowired
   LoginService loginService;

//   @RequestMapping(value = "/login", method = RequestMethod.POST)
//   @ResponseBody
//   public String login(String userEmail, String userPassword) {
//      
//      logger.debug("/login");
//      String pwd = loginService.login(userEmail);
//
//      if(pwd.equals(userPassword)) {
//         return "true";
//      }else {
//         return "false";
//      }
//   }
   
   @RequestMapping(value = "/login", method = RequestMethod.POST)
   @ResponseBody
   public String login(HttpSession session, String userEmail, String userPassword) {
      
      logger.debug("/login");
      UserDto dto = loginService.login(userEmail);

      if(dto.getUserPassword().equals(userPassword)) {
    	 session.setAttribute("userDto", dto);
    	 System.out.println("로그인 성공");
         return "true";
      }else {
         return "false";
      }
   }
}

