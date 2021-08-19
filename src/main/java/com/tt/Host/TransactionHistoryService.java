package com.tt.Host;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.tt.vo.TransactionHistoryDTO;

public interface TransactionHistoryService {

	void excelDownload(TransactionHistoryDTO download, HttpServletResponse response) throws Exception;

	List<TransactionHistoryDTO> getAllTransactionHistoryForExcel(int userNo) throws Exception;
	
	TransactionHistoryDTO getAllTransactionHistoryByHashMap(Map<String, Object> map) throws Exception;
}
