package com.tt.Lodging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LodgingImgServiceImpl implements LodgingImgService{

	@Autowired
	LodgingImgDao lodgingImgDao;
	
	@Override
	public List<LodgingImgVO> getImgListByLdgNo(int no) {
		return lodgingImgDao.getImgListByLdgNo(no);
	}

	@Override
	public void addImg(LodgingImgVO lodgingImg) {
		lodgingImgDao.insertImage(lodgingImg);
	}
	
}
