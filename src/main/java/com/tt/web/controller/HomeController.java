package com.tt.web.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;


/*
	@Controller
		- 클라이언트의 요청을 처리하는 컨트롤러 클래스임을 나타낸다.
		- <context:component-scan /> 태그를 xml에 설정했을 대 자동으로 스프링 컨테이너의 빈으로 등록된다.
 */
@Controller
public class HomeController {

	private static Logger logger = LogManager.getLogger(HomeController.class);


}
