package com.shlee.webapp.dto;

import java.util.Date;

public class UserDto {
   private int userSeq;
   private String userName;
   private String userPassword;
   private String userEmail;
   private String profileImageUrl;
   private Date userRegisterDate;
   private String userAddress;
   private String adminCheck;
   
   
   public int getUserSeq() {
      return userSeq;
   }
   
   public void setUserSeq(int userSeq) {
      this.userSeq = userSeq;
   }
   
   public String getUserName() {
      return userName;
   }
   
   public void setUserName(String userName) {
      this.userName = userName;
   }
   
   public String getUserPassword() {
      return userPassword;
   }
   
   public void setUserPassword(String userPassword) {
      this.userPassword = userPassword;
   }
   public String getUserEmail() {
      return userEmail;
   }
   
   public void setUserEmail(String userEmail) {
      this.userEmail = userEmail;
   }
   
   public String getProfileImageUrl() {
      return profileImageUrl;
   }
   
   public void setProfileImageUrl(String profileImageUrl) {
      this.profileImageUrl = profileImageUrl;
   }
   
   public Date getUserRegisterDate() {
      return userRegisterDate;
   }
   
   public void setUserRegisterDate(Date userRegisterDate) {
      this.userRegisterDate = userRegisterDate;
   }

   public String getAdminCheck() {
	   return adminCheck;
   }

   public void setAdminCheck(String adminCheck) {
	   this.adminCheck = adminCheck;
   }
   
   public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
   
   
   
}