package com.tt.Lodging;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public interface LodgingImgService {
	List<LodgingImgVO> getImgListByLdgNo(Map<String, Integer> condition);
	
	void addImg(LodgingImgVO lodgingImg);
	
	
}
