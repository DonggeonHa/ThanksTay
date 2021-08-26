package com.tt.Lodging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Common.CommonConstant;
import com.tt.Common.CommonDao;

@Service
public class LodgingServiceImpl implements LodgingService {
	@Autowired
	LodgingDao lodgingDao;
	@Autowired 
	CommonDao commonDao;

	@Override
	public List<LodgingVO> getLodgingsByLoginedUserNo(int userNo) {
		return lodgingDao.getLodgingsByUserNo(userNo);
	}

	/**
	 * 로그인한 유저의 숙소 중 상태가 "등록중" 숙소 반환
	 */
	@Override
	public LodgingVO getLodgingRegistering(int userNo) {
		List<LodgingVO> lodgingList=lodgingDao.getLodgingsByUserNo(userNo);
		for (LodgingVO lodgingVO : lodgingList) {
			String statusCode= commonDao.getCommonCodeByCodeContent(CommonConstant.LDG_REGISTERING);	//"등록중" 있던 자리
			
			if(lodgingVO.getStatus().equals(statusCode)) {
				return lodgingVO;
			}
		}
		return null;
	}

	@Override
	public void registerLodging(LodgingVO lodging) {
		lodgingDao.insertLodging(lodging);
	}

	@Override
	public void updateLodging(LodgingVO lodging) {
		lodgingDao.updateLodging(lodging);
	}

	@Override
	public void updateLodgingStatus(int lodgingNo) {
		lodgingDao.updateLodgingStatus(lodgingNo);
	}
}
