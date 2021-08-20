package com.tt.Explore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class LodgingListVO {
	private int no;
	private String userNo;
	private String city;
	private String postNo;
	private String address;
	private boolean immApproval;
	private int maxGuest;
	private String image;//리스트 풀어야
	private String name;
	private int bedroom;
	private int singlebed;
	private int doublebed;
	private int viewCount;
	private int reviewCount;
	private int reviewAverage;
	private String status;
	private String typeCode;
	private Double longitude;
	private Double latitude;
	//추가함
	private int lodgingFee;
	private int cleaningFee;
	private String amentityList;
	private boolean isWishlisted;
	//가격정보 추가해야
	//어메니티
	private int totalBed;
	private int totalFee;
}
