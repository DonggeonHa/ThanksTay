package com.tt.Lodging;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.math3.analysis.function.Constant;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tt.Common.CommonConstant;
import com.tt.Common.CommonDao;
import com.tt.Common.CommonService;
import com.tt.Host.HostMainController;
import com.tt.Host.HostService;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.vo.CommonCodeVO;
import com.tt.web.annotation.LoginUser;
import com.tt.web.form.AttachmentFileForm;
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
	@Autowired
	LodgingImgService lodgingImgService;

	@GetMapping("/lodgingTypeAdd")
	public String lodgingAddForm(@LoginUser UserVO user, Model model) {
		logger.info("로그인 유저:" + user);
		logger.info("lodgingTypeAddForm() 실행");

		String commonCode = commonService.getCommonCodeByContent("숙소타입");
		List<CommonCodeVO> lodgingTypeCodes = commonService.getCommonCodesByParentCode(commonCode);

		model.addAttribute("lodgingTypes", lodgingTypeCodes);

		return "host/lodgingTypeAddForm";
	}

	@PostMapping("/lodgingDetailAdd")
	public String lodgingDetailAddForm(@LoginUser UserVO user, Model model, LodgingRegisterForm lrForm,
			@RequestParam("ldgType") String type) { // ,
		logger.info("lodgingDetailAddForm 실행");

		String typeCmCode = commonService.getCommonCodeByContent(type);
		// 로그인한 유저의 숙소 중 숙소 상태가 "등록중"인 숙소 반환
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());

		model.addAttribute("loginedUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering == null ? lrForm : lodgingRegistering);
		model.addAttribute("ldgType", typeCmCode);

		System.out.println("숙소타입의 공통코드:" + typeCmCode);
		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		return "host/lodgingDetailAddForm";
	}

	@PostMapping("/lodgingAddressAdd")
	public String lodgingAddressAddForm(@LoginUser UserVO user, LodgingRegisterForm lrForm, Model model) {
		logger.info("lodgingAddressAddForm 실행");
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());

		model.addAttribute("loginUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering == null ? lrForm : lodgingRegistering);

		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		return "host/lodgingAddressAddForm";
	}

	@GetMapping("/lodgingAmenityAdd")
	public String lodgingAmenityAddForm(@LoginUser UserVO user, Model model) {
		logger.info("lodgingAmenityAddForm 실행");
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());

		String amnCode = commonService.getCommonCodeByContent(CommonConstant.AMN_TYPE);
		List<CommonCodeVO> amnTypes = commonService.getCommonCodesByParentCode(amnCode);

		model.addAttribute("loginUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering);
		model.addAttribute("amnTypes", amnTypes);

		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		return "host/lodgingAmenityAddForm";
	}

	@GetMapping("/lodgingImgAdd")
	public String lodgingImgAddForm(@LoginUser UserVO user, Model model) {
		logger.info("lodgingImgAddForm 실행");
		
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		int lodgingNo = lodgingRegistering.getNo();
		int getCnt=4;
		
		Map<String, Integer> condition= new HashMap<String, Integer>();
		condition.put("lodgingNo", lodgingNo);
		condition.put("getCnt", getCnt);
		List<LodgingImgVO> imgList = lodgingImgService.getImgListByLdgNo(condition);
		model.addAttribute("imgList", imgList);

		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		System.out.println("숙소번호: " + lodgingNo);
		System.out.println("이미지 정보: "+imgList);
		System.out.println(imgList.get(0).getUri());
		System.out.println(imgList.get(1).getUri());
		System.out.println(imgList.get(2).getUri());
		System.out.println(imgList.get(3).getUri());
		return "host/lodgingImgAddForm";
	}

	@PostMapping("/lodgingImgAdd")
	@ResponseBody
	public Map<String, Object> lodgingImgAddForm(@RequestParam(name = "picture", required = false) MultipartFile upfile,
			@LoginUser UserVO user,

			MultipartHttpServletRequest req, Model model) throws IOException {

		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		int lodgingNo = lodgingRegistering.getNo();

		// 파일 업로드
		String uploadPath = req.getSession().getServletContext().getRealPath("/");	// Q. .metadata 안의 경로로 저장이됨
		String filename= System.currentTimeMillis()	+ upfile.getOriginalFilename();
		FileItem fileItem = new FileItem();
		fileItem.setFilename(filename);
		FileCopyUtils.copy(upfile.getInputStream(), new FileOutputStream(new File(
		/* 데스크톱 파일저장 주소 */
        //"C:/eGovFrameDev-3.10.0-64bit/workspace/workspace_project_thxtay/thxtay/src/main/webapp/resources/images/lodgings",
                uploadPath+"resources/images/lodgings",
        /* 노트북주소 파일저장 주소*/
//		        "C:/eGovFrameDev-3.10.0-64bit/workspace/workspace_project_thankstay/thankstay/src/main/webapp/resources/images/lodgings",
        filename)));
		
		// 등록중인 숙소의 번호로 숙소이미지리스트 vo 조회 후 insert
		LodgingImgVO lodgingImg = new LodgingImgVO();
		lodgingImg.setUri("/resources/images/lodgings/"+fileItem.getFilename());
		lodgingImg.setLodgingNo(lodgingNo);
		lodgingImgService.addImg(lodgingImg);

		/* 숙소 이미지파일 조회&화면뿌리기 */
		// 내려주는 파일
		Map<String, Integer> condition= new HashMap<String, Integer>();
		int getCnt=4;
		condition.put("lodgingNo", lodgingNo);
		condition.put("getCnt", getCnt);
		List<LodgingImgVO> pictures = lodgingImgService.getImgListByLdgNo(condition);

		
		Map<String, Object> retVal = new HashMap<String, Object>();
		retVal.put("upfile", pictures);// MultipartFile객체는 바이너리 데이터를 포함하고 있어서 json으로 변환이 되지 않는다.
		logger.info("보내는 파일 " + pictures);
		logger.info("리턴밸류 " + retVal);

		System.out.println("pictures="+pictures);
		return retVal;
	}

	@PostMapping("/saveTemp")
	public String saveTemp(@LoginUser UserVO user, LodgingRegisterForm lrForm) {
		logger.info("saveTemp 실행");
		LodgingVO lodging = new LodgingVO();

		// 이미 상태가 등록중인 숙소는 lodgingService의 update작업 실행
		if (!lrForm.getStatus().isEmpty()) {
			BeanUtils.copyProperties(lrForm, lodging);
			lodgingService.updateLodging(lodging);

			System.out.println("업데이트된 숙소의 정보" + lodging);
			System.out.println("업데이트 실행");
			return "redirect:hosting";
		}

		// 등록상태가 null일 경우 등록상태:등록중 으로 초기화 먼저 실행 후 숙소등록 작업 실행
		lrForm.setStatus(commonService.getCommonCodeByContent(CommonConstant.LDG_REGISTERING));
		BeanUtils.copyProperties(lrForm, lodging);
		lodging.setUserNo(user.getNo());
		lodgingService.registerLodging(lodging);

		System.out.println("저장된 숙소의 정보:" + lodging);
		return "redirect:hosting";
	}
}
