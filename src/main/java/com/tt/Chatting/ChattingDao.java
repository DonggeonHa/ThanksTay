package com.tt.Chatting;

import com.tt.User.UserVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChattingDao {

    void insertUser(UserVO user);

}
