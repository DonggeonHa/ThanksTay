package com.tt.Host;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tt.vo.BookingVO;
import com.tt.vo.EarningsVO;

public interface EarningsService {
	
	EarningsVO checkBookingsByHashMap(Map<String, Object> map) throws Exception;
	
	BookingVO updateAmountByUserNo(int userNo) throws Exception;
}
