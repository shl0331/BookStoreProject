package com.shlee.webapp.dto;

import java.util.Date;

public class SaleDto {
	private int saleSeq;
	private int userSeq;
	private String userName;
	private String userEmail;
	private String userAddress;
	private int bookSeq;
	private String bookName;
	private String bookProfileImageUrl;
	private int bookQuantity;
	private int bookPrice;
	private Date bookSaleDate;
	
	
	

	public int getSaleSeq() {
		return saleSeq;
	}
	public void setSaleSeq(int saleSeq) {
		this.saleSeq = saleSeq;
	}
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
	public String getUserEmail() {
		return userEmail;
	}
	
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getBookSeq() {
		return bookSeq;
	}
	public void setBookSeq(int bookSeq) {
		this.bookSeq = bookSeq;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookProfileImageUrl() {
		return bookProfileImageUrl;
	}
	public void setBookProfileImageUrl(String bookProFileImageUrl) {
		this.bookProfileImageUrl = bookProFileImageUrl;
	}
	public int getBookQuantity() {
		return bookQuantity;
	}
	public void setBookQuantity(int bookQuantity) {
		this.bookQuantity = bookQuantity;
	}
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}
	public Date getBookSaleDate() {
		return bookSaleDate;
	}
	public void setBookSaleDate(Date bookSaleDate) {
		this.bookSaleDate = bookSaleDate;
	}
	
	
}