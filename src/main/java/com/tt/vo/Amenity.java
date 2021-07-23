package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class Amenity {

    private int code;       // 편의시설코드
    private String name;    // 편의시설 이름

    public Amenity() {}
}
