package com.tt.Lodging;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.vo.AmenityListDTO;
import com.tt.vo.PriceVO;
import com.tt.vo.ReviewDTO;

@Mapper
public interface BookingDao {

	/**
	 * 지정된 숙소번호에 해당하는 숙소정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소정보
	 */
	LodgingVO getLodgingByLodgingNo(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 요금정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 요금정보
	 */
	List<PriceVO> getPricesByLodgingNo(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소이미지 정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소이미지 정보
	 */
	List<LodgingImgVO> getLodgingImgByLodgingNo(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소편의시설 정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소편의시설 리스트
	 */
	List<AmenityListDTO> getAmenitiesByLodgingNo(int lodgingNo);
	
	
	List<ReviewDTO> getReviewsByLodgingNo(int lodgingNo);
}
