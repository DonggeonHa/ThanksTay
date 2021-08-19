package com.tt.Host;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tt.User.UserVO;
import com.tt.vo.BookingVO;
import com.tt.vo.EarningsVO;

public interface EarningsService {
	
	EarningsVO getEarningsByHashMap(Map<String, Object> map) throws Exception;
	
	void updateEarnings(int userNo) throws Exception;
	
	List<EarningsVO> getEarningsChartbyHashMap(Map<String, Object> map) throws Exception;

	List<BookingVO> getAllBookingsByUserNo(int userNo) throws Exception;

	List<UserVO> getAllUsers() throws Exception;
}
