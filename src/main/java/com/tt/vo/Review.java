package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Review {

    private int no;             // 리뷰번호
    private String userId;      // 유저_아이디
    private int lodgingNo;      // 숙소_번호
    private int bookNo;         // 예약_번호
    private String time;        // 등록시간
    private String comment;     // 리뷰내용
    private int stars;          // 별점
    private int cleanness;      // 청결도
    private int communication;  // 의사소통
    private int checkIn;        // 체크인
    private int accuracy;       // 정확성
    private int location;       // 위치(리뷰)
    private int value;          // 가격대비 만족도

    public Review() {}
}
