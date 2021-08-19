package com.tt.Chatting;

import com.tt.User.UserDao;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.exception.LoginException;
import com.tt.web.utils.SessionUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ChattingServiceImpl implements ChattingService {

	@Autowired
    UserDao userDao;
	
	@Override
	public void registerUser(UserVO user) {
		// 패스워드 암호화
		String secretPassword = DigestUtils.sha256Hex(user.getPassword());
		user.setPassword(secretPassword);
		
		userDao.insertUser(user);
	}

}