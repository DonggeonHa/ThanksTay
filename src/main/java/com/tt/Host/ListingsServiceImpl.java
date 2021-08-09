package com.tt.Host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.FilteringVO;

@Service
public class ListingsServiceImpl implements ListingsService{

	@Autowired ListingsDao listingsDao;
	
	@Override
	public List<LodgingVO> getMyLodgings(int userNo) {
		return listingsDao.getMyLodgingsByUserNo(userNo);
	}
	
	@Override
	public List<LodgingVO> getLodgingsByFiltering(FilteringVO filtering) {
		return listingsDao.getLodgingsByFiltering(filtering);
	}
	
}
