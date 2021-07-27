package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@ToString
@Getter
public class Wishlist {
    
    private int userNo;              // 유저_번호
    private int wishlistNo;          // 찜목록번호
    private String wishlistName;     // 찜목록이름
    
    public Wishlist() {}
}
