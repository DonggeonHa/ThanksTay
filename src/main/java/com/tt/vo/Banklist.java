package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Banklist {
    
    private int code;           // 은행코드
    private String name;        // 은행이름
    
    public Banklist() {}
}
