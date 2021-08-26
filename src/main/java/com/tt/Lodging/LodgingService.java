package com.tt.Lodging;

import java.util.List;

public interface LodgingService {
	// 로그인한 유저의 숙소 중 commonCode가 LDG0301인 숙소 조회
		LodgingVO getLodgingRegistering(int userNo);
		
		List<LodgingVO> getLodgingsByLoginedUserNo(int userNo);
		
		void registerLodging(LodgingVO lodging);
		
		void updateLodging(LodgingVO lodging);
		
		void updateLodgingStatus(int lodgingNo);
}
