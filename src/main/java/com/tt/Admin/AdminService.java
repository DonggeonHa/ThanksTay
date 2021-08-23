package com.tt.Admin;

import com.tt.User.DeletedUserVO;
import com.tt.User.UserVO;

import java.util.List;

public interface AdminService {

    List<UserVO> getUsers();
    List<DeletedUserVO> getDeletedUsers();
    UserVO detailUser(int userNo);
}
