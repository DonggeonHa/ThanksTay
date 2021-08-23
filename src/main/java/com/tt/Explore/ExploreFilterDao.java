package com.tt.Explore;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.Lodging.LodgingVO;

@Mapper
public interface ExploreFilterDao {

	List<LodgingVO> getLodgingListBySearchFilter(SearchFilterVO searchFilter);
	List<LodgingVO> getLodgingListByGuests(int guests);
}
