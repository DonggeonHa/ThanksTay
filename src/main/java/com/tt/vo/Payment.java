package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class Payment {
    
    private int no;         // 결제번호
    private int bookNo;     // 예약_번호
    private Date date;      // 결제일시
    private String method;  // 결제수단

    public Payment() {}
}
