package com.tt.Lodging;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface LodgingService {
	// 로그인한 유저의 숙소 중 commonCode가 LDG0301인 숙소 조회
		LodgingVO getLodgingRegistering(int userNo);
		
		List<LodgingVO> getLodgingsByLoginedUserNo(int userNo);
		
}
