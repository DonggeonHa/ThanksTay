package com.tt.Chatting;

import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.exception.LoginException;
import com.tt.exception.UserRegisterException;
import com.tt.web.form.KakaoRegisterForm;
import com.tt.web.form.UserRegisterForm;
import com.tt.web.utils.SessionUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/*
 * @Controller
 * 		- 클라이언트의 요청을 처리하는 컨트롤러 클래스임을 나타낸다.
 * 		- <context:component-scan /> 태그를 xml에 설정했을 때 자동으로 스프링 컨테이너의 빈으로 등록된다.
 */
@Controller
public class ChattingController {

	@GetMapping("/chat")
	public String registerform() {
		return "chatting/chat";
	}


}