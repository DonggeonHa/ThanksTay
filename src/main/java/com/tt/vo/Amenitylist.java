package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Amenitylist {
    
    private int amenityCode;    // 편의시설_코드
    private int lodgingNo;      // 숙소_번호
    
    public Amenitylist() {}
}
