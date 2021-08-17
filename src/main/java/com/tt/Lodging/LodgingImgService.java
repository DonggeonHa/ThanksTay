package com.tt.Lodging;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface LodgingImgService {
	List<LodgingImgVO> getImgListByLdgNo(int no);
	
	void addImg(LodgingImgVO lodgingImg);
	
	
}
