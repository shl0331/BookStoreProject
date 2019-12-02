package com.shlee.webapp.dao;

import java.util.List;

import com.shlee.webapp.dto.BoardDto;
import com.shlee.webapp.dto.BoardFileDto;

public interface BoardDao {
	int boardInsert(BoardDto dto);
	public int boardInsertFile(BoardFileDto fileDto);
	List<BoardDto> boardList(int limit, int offset);
	int boardListTotalCnt();
	
	public List<BoardDto> boardListSearchWord(int limit, int offset, String searchWord);
	public int boardListSearchWordTotalCnt(String searchWord);
		
	BoardDto boardDetail(int boardId);
	public int boardUpdate(BoardDto dto);
	public int boardDelete(BoardDto dto);
	public int boardDeleteFile(int boardId);
	public List<BoardFileDto> boardDetailFileList(int boardId);
	public List<String> boardDeleteFileUrl(int boardId);
	
}
