package com.tt.Host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Lodging.LodgingVO;

@Service
public class ListingsServiceImpl implements ListingsService{

	@Autowired ListingsDao listingsDao;
	
	@Override
	public List<LodgingVO> getMyLodgings(String userId) {
		return listingsDao.getMyLodgingsByUserId(userId);
	}
	
}
