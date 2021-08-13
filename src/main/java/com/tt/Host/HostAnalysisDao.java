package com.tt.Host;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.tt.vo.BookingVO;
import com.tt.vo.EarningsVO;
import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionRegisterVO;

@Mapper
public interface HostAnalysisDao {

	//대금 은행 등록(TransactionRegisterVO)
	void insertBank(TransactionRegisterVO register);
	
	//대금리스트로 출력(TransactionHistoryDTO) & 엑셀 다운로드
	List<TransactionHistoryDTO> getAllTransactionHistoryForExcel(int userNo) throws Exception;
	
	TransactionHistoryDTO getAllTransactionHistoryByUserNo(int userNo) throws Exception;
	
	//수입 출력(BookingVO)
	EarningsVO checkBookingsByHashMap(Map<String, Object> map) throws Exception;
	
	//earnings
	BookingVO updateAmountByUserNo(int userNo) throws Exception;
}
