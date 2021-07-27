package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Lodgingtypes {
    
    private int typeCode;    // 숙소타입 코드
    private String name;     // 숙소타입 이름
    
    public Lodgingtypes() {}
}
