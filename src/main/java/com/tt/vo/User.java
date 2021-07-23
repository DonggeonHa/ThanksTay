package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class User {

    private String id;              // 아이디
    private String password;        // 비밀번호
    private String email;           // 이메일
    private Date date;              // 생년월일
    private String phone;           // 전화번호
    private String picture;         // 프로필사진
    private boolean checkEmail;     // 이메일 확인
    private String name;            // 이름
    private String info;            // 소개
    private boolean status;         // 호스트 여부
    private boolean admin;          // 관리자 여부
    private boolean deleted;        // 탈퇴 여부
    private Date createdDate;       // 생성일
    private Date deletedDate;       // 탈퇴일

    public User() {}
}
