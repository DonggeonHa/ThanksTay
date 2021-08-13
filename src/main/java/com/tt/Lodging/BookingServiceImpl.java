package com.tt.Lodging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.vo.PriceVO;

@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	BookingDao bookingDao;
	
	@Override
	public LodgingVO getLodgingDetail(int lodgingNo) {
		LodgingVO lodging = bookingDao.getLodgingByLodgingNo(lodgingNo);
		
		return lodging;
	}
	
	@Override
	public List<PriceVO> getVacancy(int lodgingNo) {
		List<PriceVO> priceList = bookingDao.getPricesByLodgingNo(lodgingNo);
		
		return priceList;
	}
}
