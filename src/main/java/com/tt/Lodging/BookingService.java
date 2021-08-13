package com.tt.Lodging;

import java.util.List;

import com.tt.vo.PriceVO;

public interface BookingService {

	/**
	 * 지정된 숙소번호에 해당하는 숙소의 상세정보를 제공하는 서비스
	 * @param lodgingNo
	 * @return
	 */
	LodgingVO getLodgingDetail(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소가 예약된 날짜 
	 * @param lodgingNo 숙소번호
	 * @return 예약된 날짜 
	 */
	List<PriceVO> getVacancy(int lodgingNo);
}