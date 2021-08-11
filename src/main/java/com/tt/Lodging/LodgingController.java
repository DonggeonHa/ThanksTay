package com.tt.Lodging;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.tt.Common.CommonService;
import com.tt.Host.HostMainController;
import com.tt.Host.HostService;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.vo.CommonCodeVO;
import com.tt.web.annotation.LoginUser;

@Controller
public class LodgingController {

	private static Logger logger = LogManager.getLogger(HostMainController.class);

	@Autowired
	HostService hostService;
	@Autowired
	UserService userService;
	@Autowired
	LodgingService lodgingService;

	@GetMapping("/lodgingTypeAdd")
	public String lodgingAddForm(@LoginUser UserVO user, Model model) {
		/* UserVO loginedUser = userService.getUserByNo(111); */
		System.out.println(user);

		logger.info("lodgingTypeAddForm() 실행");
		String commonCode = hostService.getCommonCodeByContent("숙소타입");
		List<CommonCodeVO> lodgingTypeCodes = hostService.getCommonCodesByParentCode(commonCode);

		model.addAttribute("lodgingTypes", lodgingTypeCodes);
		// 숙소 타입 -> 체크박스 (공통코드로 불러와야함)

		return "host/lodgingTypeAddForm";
	}

	@GetMapping("/lodgingDetailAdd")
	public String lodgingDetailAddForm(@LoginUser UserVO user, Model model) {
		logger.info("lodgingDetailAddForm 실행");

		// 로그인한 유저의 숙소 중 숙소 상태가 "등록중"인 숙소 반환
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		System.out.println("등록중인 숙소는:" + lodgingRegistering);

		model.addAttribute("loginedUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering);

		return "host/lodgingDetailAddForm";
	}

	@GetMapping("/lodgingAddressAdd")
	public String lodgingAddressAddForm(@LoginUser UserVO user, Model model) {
		logger.info("lodgingAddressAddForm 실행");

		model.addAttribute("loginUser", user);

		return "host/lodgingAddressAddForm";
	}

	@GetMapping("/saveTemp")
	public String saveTemp() {
		logger.info("saveTemp 실행");
		return null;
	}
}
