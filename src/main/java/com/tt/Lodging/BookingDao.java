package com.tt.Lodging;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.vo.PriceVO;

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
	
	
	
	
}
