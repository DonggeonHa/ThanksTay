package com.tt.Lodging;

import java.util.List;

import org.apache.commons.math3.analysis.function.Constant;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tt.Common.CommonConstant;
import com.tt.Common.CommonDao;
import com.tt.Common.CommonService;
import com.tt.Host.HostMainController;
import com.tt.Host.HostService;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.vo.CommonCodeVO;
import com.tt.web.annotation.LoginUser;
import com.tt.web.form.LodgingRegisterForm;

import lombok.extern.apachecommons.CommonsLog;


@Controller
public class LodgingController {
	private static Logger logger = LogManager.getLogger(HostMainController.class);

	@Autowired
	CommonService commonService;
	@Autowired
	HostService hostService;
	@Autowired
	UserService userService;
	@Autowired
	LodgingService lodgingService;

	@GetMapping("/lodgingTypeAdd")
	public String lodgingAddForm(@LoginUser UserVO user, Model model) {
		logger.info("로그인 유저:"+user);
		logger.info("lodgingTypeAddForm() 실행");

		String commonCode = commonService.getCommonCodeByContent("숙소타입");
		List<CommonCodeVO> lodgingTypeCodes = commonService.getCommonCodesByParentCode(commonCode);

		model.addAttribute("lodgingTypes", lodgingTypeCodes);

		return "host/lodgingTypeAddForm";
	}

	@GetMapping("/lodgingDetailAdd")
	public String lodgingDetailAddForm(@LoginUser UserVO user, Model model, @RequestParam("ldgType") String type) {
		logger.info("lodgingDetailAddForm 실행");

		String typeCmCode=commonService.getCommonCodeByContent(type);
		System.out.println("전달받은 숙소타입:" +type);
		System.out.println("숙소타입의 공통코드:"+typeCmCode);
		
		// 로그인한 유저의 숙소 중 숙소 상태가 "등록중"인 숙소 반환
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		
		model.addAttribute("loginedUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering);
		model.addAttribute("ldgType", typeCmCode);
		
		return "host/lodgingDetailAddForm";
	}

	@GetMapping("/lodgingAddressAdd")
	public String lodgingAddressAddForm(@LoginUser UserVO user, Model model) {
		logger.info("lodgingAddressAddForm 실행");

		model.addAttribute("loginUser", user);

		return "host/lodgingAddressAddForm";
	}

	@GetMapping("/saveTemp")
	public String saveTemp(@LoginUser UserVO user,LodgingRegisterForm lrForm) {
		logger.info("saveTemp 실행");
		
		LodgingVO lodging = new LodgingVO();
		System.out.println("등록중인 숙소의 정보:"+lrForm);
		
		// 이미 상태가 등록중인 숙소는 lodgingService의 update작업 실행
		// 오류발생
		if(!lrForm.getStatus().isEmpty()) {
			BeanUtils.copyProperties(lrForm, lodging);
			lodgingService.updateLodging(lodging);
			System.out.println(lrForm.getStatus());
			System.out.println("업데이트 실행");
			
			return "redirect:home";
		}
		
		// 등록상태가 null일 경우 등록상태:등록중 으로 초기화 먼저 실행 후 숙소등록 작업 실행
		lrForm.setStatus(commonService.getCommonCodeByContent(CommonConstant.LDG_REGISTERING));
		BeanUtils.copyProperties(lrForm, lodging);
		lodging.setUserNo(user.getNo());
		
		lodgingService.registerLodging(lodging);
		System.out.println("저장된 숙소의 정보:"+ lodging);
		
		return "redirect:home";
	}
}
