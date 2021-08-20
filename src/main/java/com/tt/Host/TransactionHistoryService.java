package com.tt.Host;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

public interface TransactionHistoryService {

	void excelDownload(TransactionHistoryDTO download, HttpServletResponse response) throws Exception;

	List<TransactionHistoryDTO> getAllTransactionHistoryForExcel(int userNo) throws Exception;
	
	List<TransactionHistoryDTO> getAllTransactionHistoryByHashMap(Map<String, Object> map) throws Exception;

	TransactionHistoryDTO getAllTransactionHistoryByUserNo(int userNo) throws Exception;

}
