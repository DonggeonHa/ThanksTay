package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class User {

    private String id;
    private String password;
    private String email;
    private Date date;
    private String phone;
    private String picture;
    private boolean checkEmail;
    private String name;
    private String info;
    private boolean status;
    private boolean admin;
    private boolean deleted;
    private Date createdDate;
    private Date deletedDate;
}
