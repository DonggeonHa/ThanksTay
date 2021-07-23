package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class Price {
    
    private int no;             // 요금번호
    private int lodgingNo;      // 숙소_번호
    private Date startDate;     // 시작일
    private Date endDate;       // 종료일
    private int lodgingFee;     // 숙박료
    private int cleanningFee;   // 청소비
    
    public Price() {}
}
