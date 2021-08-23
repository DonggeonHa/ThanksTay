package com.tt.Admin;

import com.tt.User.DeletedUserVO;
import com.tt.User.UserDao;
import com.tt.User.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired AdminDao adminDao;

    @Override
    public List<UserVO> getUsers() {
        return adminDao.getUsers();
    }

    @Override
    public UserVO detailUser(int userNo) {
        return adminDao.getUserByNo(userNo);
    }

    @Override
    public List<DeletedUserVO> getDeletedUsers() {
        return adminDao.getDeletedUsers();
    }
}
