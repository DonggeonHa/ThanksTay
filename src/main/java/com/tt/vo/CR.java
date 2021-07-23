package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@ToString
@Setter
@Getter
public class CR {
    
    private int no;             // 채팅방번호
    private String userId;      // 유저_아이디
    private String host;        // 호스트
    private String admin;       // 관리자
    private Date createdDate;   // 생성일

    public CR() {}
}
