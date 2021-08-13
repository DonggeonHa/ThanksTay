package com.tt.Explore;

import java.util.List;

import com.tt.Lodging.LodgingVO;

public interface ExploreFilterService {

	List<LodgingVO> getLodgingListByFirstFilter(FirstFilterVO firstFilter);
	List<LodgingVO> getLodgingListByFirstLatLng(FirstFilterVO firstFilter);
	List<LodgingVO> getLodgingListByGuests(int guests);
}
