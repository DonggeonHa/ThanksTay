package com.tt.Host;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.vo.BookingVO;
import com.tt.vo.EarningsVO;

@Service("EarningsService")
public class EarningsServiceImpl implements EarningsService{

	@Autowired HostAnalysisDao hostAnalysisDao;
	
	@Override
	public EarningsVO checkBookingsByHashMap(Map<String, Object> map) throws Exception {

		return hostAnalysisDao.checkBookingsByHashMap(map);
	}
	
	@Override
	public BookingVO updateAmountByUserNo(int userNo) throws Exception {
		return null;
	}
}
