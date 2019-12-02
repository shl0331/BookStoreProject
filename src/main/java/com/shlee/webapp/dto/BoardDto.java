package com.shlee.webapp.dto;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BoardDto {
	private int boardId;
	private String userSeq;
	private String userName;
	private String userProfileImageUrl;
	private String title;
	private String content;
	
	@JsonFormat(pattern = "yyyy-MM-dd:mm", timezone = "Asia/Seoul")
	private Date regDt;
	private int readCount;
	
	
	private List<BoardFileDto> fileList;


	public int getBoardId() {
		return boardId;
	}


	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}


	public String getUserSeq() {
		return userSeq;
	}


	public void setUserSeq(String userSeq) {
		this.userSeq = userSeq;
	}
	
	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUsrProfileImageUrl() {
		return userProfileImageUrl;
	}


	public void setUserProfileImageUrl(String usrProfileImageUrl) {
		this.userProfileImageUrl = usrProfileImageUrl;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Date getRegDt() {
		return regDt;
	}


	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}


	public int getReadCount() {
		return readCount;
	}


	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}


	public List<BoardFileDto> getFileList() {
		return fileList;
	}


	public void setFileList(List<BoardFileDto> fileList) {
		this.fileList = fileList;
	}
	
}