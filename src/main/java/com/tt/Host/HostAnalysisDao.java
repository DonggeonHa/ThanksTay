package com.tt.Host;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.tt.User.UserVO;
import com.tt.Lodging.BookingVO;
import com.tt.Lodging.LodgingVO;
import com.tt.Common.CommonCodeVO;

@Mapper
public interface HostAnalysisDao {
	/* TransactionHistoryVO / TransactionRegisterVO */
	//대금 은행 등록(TransactionRegisterVO)
	void insertBank(TransactionRegisterVO register);
	//대금 리스트로 출력(TransactionHistoryDTO) & 엑셀 다운로드
	List<TransactionHistoryDTO> getAllTransactionHistoryForExcel(int userNo) throws Exception;
	//대금 리스트로 출력(TransactionHistoryDTO)
	List<TransactionHistoryDTO> getAllTransactionHistoryByHashMap(Map<String, Object> map) throws Exception;

	List<TransactionHistoryDTO> getAllTransactionHistoryByUserNo(int userNo) throws Exception;
	
	TransactionRegisterVO getTransactionHistoryByUserNo(int userNo) throws Exception;
	
	List<LodgingVO> getAllLodgingsByUserNo(int userNo) throws Exception;
	
	
	/* EarningsVO / BookingVO */
	//수입 출력(EarningsVO)
	EarningsVO getEarningsByHashMap(Map<String, Object> map) throws Exception;
	//수입 출력(BookingVO - 구글차트)
	List<EarningsVO> getEarningsChartbyHashMap(Map<String, Object> map) throws Exception;
	//Bookings 상태 update
	void updateEarnings(int userNo) throws Exception;
	
	List<BookingVO> getAllBookingsByUserNo(int userNo) throws Exception;
	
	List<UserVO> getAllUsers() throws Exception;
	
	//공통코드
	List<CommonCodeVO> getCommonCodeByPntCode(String code) throws Exception;
	
}
