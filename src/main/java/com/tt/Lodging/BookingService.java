package com.tt.Lodging;

import java.util.List;

import com.tt.Host.PriceVO;

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
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소의 이미지정보를 제공하는 서비스
	 * @param lodgingNo 숙소번호
	 * @return 이미지 정보
	 */
	List<LodgingImgVO> getLodgingIMG(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소편의시설 정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소편의시설 리스트
	 */
	List<AmenityListDTO> getAmenitiesByLodgingNo(int lodgingNo);
	
	void booking(BookingVO booking);
	
	BookingVO getBookingNoByBooking(BookingVO booking);
	
	void insertPayment(PaymentVO payment);
	
	List<ReviewDTO> getReview(int lodgingNo);
	
	BookingVO getBookingNoByUserNo(BookingVO booking);
	
	void insertReview(ReviewVO review);
	
	void updateLodging(LodgingVO lodging);
}
