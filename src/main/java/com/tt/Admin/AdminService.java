package com.tt.Admin;

import com.tt.User.UserVO;

import java.util.List;

public interface AdminService {

    List<UserVO> getUsers();
    UserVO detailUser(int userNo);
}
