package com.tt.Lodging;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LodgingImgDao {
	void insertImage(LodgingImgVO lodgingImg);
	
	List<LodgingImgVO> getImgListByLdgNo(int ldgNo);
}
