package com.shlee.webapp.dto;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BookDto {
	private int bookId;
	private int userSeq;
	private String userName;
	private String bookName;
	private String bookGenre;
	private String bookAuthor;
	private String bookPublisher;

	private String bookProfileImageUrl;
	private String fileUrl;
	
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd:mm", timezone = "Asia/Seoul")
	private Date bookRegisterDate;
	private int bookQuantity;
	private int bookPrice;
	
	private List<BookFileDto> fileList;
	
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
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
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookGenre() {
		return bookGenre;
	}
	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookPublisher() {
		return bookPublisher;
	}
	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}
	public String getBookProfileImageUrl() {
		return bookProfileImageUrl;
	}
	public void setBookProfileImageUrl(String bookProfileImageUrl) {
		this.bookProfileImageUrl = bookProfileImageUrl;
	}
	public Date getBookRegisterDate() {
		return bookRegisterDate;
	}
	public void setBookRegisterDate(Date bookRegisterDate) {
		this.bookRegisterDate = bookRegisterDate;
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
	public List<BookFileDto> getFileList() {
		return fileList;
	}
	public void setFileList(List<BookFileDto> fileList) {
		this.fileList = fileList;
	}
	public BookDto(int bookId, int userSeq, String userName, String bookName, String bookGenre, String bookAuthor,
			String bookPublisher, String bookProfileImageUrl, String fileUrl, Date bookRegisterDate, int bookQuantity,
			int bookPrice, List<BookFileDto> fileList) {
		super();
		this.bookId = bookId;
		this.userSeq = userSeq;
		this.userName = userName;
		this.bookName = bookName;
		this.bookGenre = bookGenre;
		this.bookAuthor = bookAuthor;
		this.bookPublisher = bookPublisher;
		this.bookProfileImageUrl = bookProfileImageUrl;
		this.fileUrl = fileUrl;
		this.bookRegisterDate = bookRegisterDate;
		this.bookQuantity = bookQuantity;
		this.bookPrice = bookPrice;
		this.fileList = fileList;
	}
	public BookDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "BookDto [bookId=" + bookId + ", userSeq=" + userSeq + ", userName=" + userName + ", bookName="
				+ bookName + ", bookGenre=" + bookGenre + ", bookAuthor=" + bookAuthor + ", bookPublisher="
				+ bookPublisher + ", bookProfileImageUrl=" + bookProfileImageUrl + ", fileUrl=" + fileUrl
				+ ", bookRegisterDate=" + bookRegisterDate + ", bookQuantity=" + bookQuantity + ", bookPrice="
				+ bookPrice + ", fileList=" + fileList + "]";
	}
	
	
	
	
	
	
	
}
