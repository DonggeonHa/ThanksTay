package com.tt.Lodging;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
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
	public String lodgingDetailAddForm(@LoginUser UserVO user, Model model, @RequestParam("ldgType") String type) { // ,
		logger.info("lodgingDetailAddForm 실행");

		String typeCmCode = commonService.getCommonCodeByContent(type);
		System.out.println("숙소타입의 공통코드:" + typeCmCode);

		// 로그인한 유저의 숙소 중 숙소 상태가 "등록중"인 숙소 반환
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		System.out.println("등록중인 숙소는:" + lodgingRegistering);

		model.addAttribute("loginedUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering);
		model.addAttribute("ldgType", typeCmCode);

		return "host/lodgingDetailAddForm";
	}

	@PostMapping("/lodgingAddressAdd")
	public String lodgingAddressAddForm(@LoginUser UserVO user, LodgingRegisterForm lrForm, Model model) {
		logger.info("lodgingAddressAddForm 실행");
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		System.out.println("등록중인 숙소는:" + lodgingRegistering);

		model.addAttribute("loginUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering==null?lrForm:lodgingRegistering);
		
		return "host/lodgingAddressAddForm";
	}

	@GetMapping("/lodgingAmenityAdd")
	public String lodgingAmenityAddForm(@LoginUser UserVO user, Model model) {
		logger.info("lodgingAmenityAddForm 실행");
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		System.out.println("등록중인 숙소는:" + lodgingRegistering);

		String amnCode = commonService.getCommonCodeByContent(CommonConstant.AMN_TYPE);
		List<CommonCodeVO> amnTypes = commonService.getCommonCodesByParentCode(amnCode);

		model.addAttribute("loginUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering);
		model.addAttribute("amnTypes", amnTypes);

		return "host/lodgingAmenityAddForm";
	}

	@GetMapping("/lodgingImgAdd")
	public String lodgingImgAddForm(@LoginUser UserVO user, Model model) {
		logger.info("lodgingImgAddForm 실행");
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		// 
		int lodgingNo = lodgingRegistering.getNo();
		System.out.println("숙소번호: "+lodgingNo);
		List<LodgingImgVO> imgList = lodgingImgService.getImgListByLdgNo(lodgingNo);
		System.out.println("이미지리스트사이즈"+imgList.toString());
		model.addAttribute("imgList", imgList);
		//
		return "host/lodgingImgAddForm";
	}

//	@PostMapping("/lodgingImgAdd")
//	@ResponseBody
//	public Map<String, Object> lodgingImgAddForm(@RequestParam(name="picture", required=false) MultipartFile upfile, @LoginUser UserVO user,
//			
//		MultipartHttpServletRequest req, Model model) throws IOException {
//		
//		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
//		int lodgingNo = lodgingRegistering.getNo();
//		Map<String,	Object> retVal = new HashMap<String, Object>();
//		retVal.put("upfile", );//MultipartFile객체는 바이너리 데이터를 포함하고 있어서 json으로 변환이 되지 않는다.
//		System.out.println(upfile);
////		String uploadPath = req.getServletContext().getRealPath("resources/images/lodgings");
////		System.out.println(uploadPath);
////		String filename = System.currentTimeMillis() + upfile.getOriginalFilename();
////		String filetype = upfile.getContentType();
////		long filesize = upfile.getSize();
////		
////		FileItem fileItem = new FileItem();
////		fileItem.setFilename(filename);
////		fileItem.setFiletype(filetype);
////		fileItem.setFilesize(filesize);
////		
////		// 파일 업로드, 주소 줄이는법 질문
////		FileCopyUtils.copy(upfile.getInputStream(), new FileOutputStream(new File(
////				/* 데스크톱 파일저장 주소*/
////				//"C:/eGovFrameDev-3.10.0-64bit/workspace/workspace_project_thxtay/thxtay/src/main/webapp/resources/images/lodgings",
////				/* 노트북주소 파일저장 주소*/
////				"C:/eGovFrameDev-3.10.0-64bit/workspace/workspace_project_thankstay/thankstay/src/main/webapp/resources/images/lodgings", filename)));
////		
////		// 등록중인 숙소의 번호로 숙소이미지리스트 vo 조회 후 insert
////		LodgingImgVO lodgingImg = new LodgingImgVO();
////		lodgingImg.setUri("/resources/images/lodgings/"+fileItem.getFilename());
////		lodgingImg.setLodgingNo(lodgingNo);
////		lodgingImgService.addImg(lodgingImg);
//		
//		return retVal;
//	}
	@PostMapping("/lodgingImgAdd")
	public String lodgingImgAddForm(@LoginUser UserVO user, @RequestParam("upfile") MultipartFile upfile,
			MultipartHttpServletRequest req, Model model) throws IOException {

		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		int lodgingNo = lodgingRegistering.getNo();

		// 숙소번호로 등록된 사진리스트 조회하기, 등록된 사진 갯수 전달
		List<LodgingImgVO> imgList = lodgingImgService.getImgListByLdgNo(lodgingNo);
		model.addAttribute("imgList", imgList);
		
		String uploadPath = req.getServletContext().getRealPath("resources/images/lodgings");
		System.out.println(uploadPath);
		String filename = System.currentTimeMillis() + upfile.getOriginalFilename();
		String filetype = upfile.getContentType();
		long filesize = upfile.getSize();

		FileItem fileItem = new FileItem();
		fileItem.setFilename(filename);
		fileItem.setFiletype(filetype);
		fileItem.setFilesize(filesize);

		// 주소 줄이는법 질문
		FileCopyUtils.copy(upfile.getInputStream(), new FileOutputStream(new File(
		/* 데스크톱 파일저장 주소*/
		//"C:/eGovFrameDev-3.10.0-64bit/workspace/workspace_project_thxtay/thxtay/src/main/webapp/resources/images/lodgings",
		/* 노트북주소 파일저장 주소*/
		"C:/eGovFrameDev-3.10.0-64bit/workspace/workspace_project_thankstay/thankstay/src/main/webapp/resources/images/lodgings", filename)));
		
		// 등록중인 숙소 조회, 숙소이미지리스트 테이블에 insert
		LodgingImgVO lodgingImg = new LodgingImgVO();
		lodgingImg.setUri("/resources/images/lodgings/"+fileItem.getFilename());
		lodgingImg.setLodgingNo(lodgingNo);
		lodgingImgService.addImg(lodgingImg);

		return "host/lodgingImgAddForm";
	}

//	@PostMapping("/lodgingImgAdd")
//	public String lodgingImgAddForm(@LoginUser UserVO user, AttachmentFileForm imgForm, MultipartHttpServletRequest request ) throws IOException{
//		
//		List<MultipartFile> uploadFiles = imgForm.getUpfiles();
//		List<FileItem> fileItems = new ArrayList<>();
//		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
//		int lodgingNo = lodgingRegistering.getNo();
//		
//		String uploadPath = request.getServletContext().getRealPath("resources/images/lodgings");
//		String pictureName;
//		for (MultipartFile uploadFile : uploadFiles) {
//			if(!uploadFile.isEmpty()) {
//				String filename = System.currentTimeMillis()+uploadFile.getOriginalFilename();
//				String filetype = uploadFile.getContentType();
//				long filesize = uploadFile.getSize();
//				
//				FileItem fileItem = new FileItem();
//				fileItem.setFilename(filename);
//				fileItem.setFiletype(filetype);
//				fileItem.setFilesize(filesize);
//				fileItems.add(fileItem);
//				
//				//주소 줄이는법 질문
//				FileCopyUtils.copy(uploadFile.getInputStream(), new FileOutputStream(new File("C:\\eGovFrameDev-3.10.0-64bit\\workspace\\workspace_project_thxtay\\thxtay\\src\\main\\webapp\\resources\\images\\lodgings",filename)));
//			}
//		}
//		// 숙소 번호로 숙소이미지 리스트 조회, 숙소이미지리스트 테이블에 insert
//		LodgingImgVO lodgingImg= new LodgingImgVO();
//		lodgingImg.setLodgingNo(lodgingNo);
//		lodgingImgService.addImg(lodgingImg);
//		
//		return "host/lodgingImgAddForm";
//	}

	@PostMapping("/saveTemp")
	public String saveTemp(@LoginUser UserVO user, LodgingRegisterForm lrForm) {
		logger.info("saveTemp 실행");
		System.out.println("lrForm:" + lrForm);
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
