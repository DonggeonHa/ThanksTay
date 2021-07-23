package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@ToString
@Getter
public class Wishlist {
    
    private String userId;      // 유저_아이디
    private int lodgingNo;      // 숙소_번호
    
    public Wishlist() {}
}
