package com.tt.Explore;

import java.util.List;

import com.tt.Lodging.LodgingVO;

public interface ExploreFilterService {

	List<LodgingVO> getLodgingListBySearchFilter(SearchFilterVO searchFilter);
	List<LodgingVO> getLodgingListByGuests(int guests);
}
