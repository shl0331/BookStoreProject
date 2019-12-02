package com.shlee.webapp.dao;

import java.util.List;

import com.shlee.webapp.dto.SaleDto;

public interface SaleDao {
	int saleInsert(SaleDto dto);
	List<SaleDto> saleList(int limit, int offset);
	
	public List<SaleDto> saleListSearchWord(int limit, int offset, String searchWord);
	public int saleListSearchWordTotalCnt(String searchWord);
	
	int saleListTotalCnt();
	SaleDto saleDetail(int saleSeq);
	public int saleUpdate(SaleDto dto);
	public int saleDelete(SaleDto dto);

}


		
		
		