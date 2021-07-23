package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class CM {
    
    private int no;             // 메시지번호
    private String userId;      // 유저_아이디
    private int crNo;           // 채팅방_번호
    private String contents;    // 채팅메세지
    private Date createdTime;   // 송신시간
    private boolean opt;        // 채팅옵션
    private boolean check;      // 확인여부

    public CM() {}
}
