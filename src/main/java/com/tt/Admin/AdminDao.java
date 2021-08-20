package com.tt.Admin;

import com.tt.User.UserVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminDao {

    /* 일반회원관리 */
    List<UserVO> getUsers();
}
