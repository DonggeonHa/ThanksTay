package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Lodging {

    private int no;                 // 숙소번호
    private String userId;          // 호스트_아이디
    private String lodgingType;     // 숙소_타입
    private String city;            // 주소 시군구
    private String postNo;          // 주소 우편번호
    private String address;         // 주소 상세주소
    private String description;     // 숙소설명
    private boolean immApproval;    // 즉시승인여부
    private int maxGuest;           // 최대 인원수
    private String image;           // 숙소사진
    private String name;            // 숙소이름
    private int bedroom;            // 침실 수
    private int bathroom;           // 욕실 수
    private int singlebed;          // 1인용 침대
    private int doublebed;          // 2인용 침대
    private int viewCount;          // 조회수
    private int reviewCount;        // 리뷰 갯수
    private double reviewAverage;   // 리뷰 평점
    private double cleanness;       // 청결도
    private double communication;   // 의사소통
    private double checkIn;         // 체크인
    private double accuracy;        // 정확성
    private double location;        // 위치(리뷰)
    private double value;           // 가격대비 만족도
    private boolean status;         // 숙소상태

    public Lodging() {}
}
