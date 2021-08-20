package com.tt.Host;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.commons.lang.time.DateUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tt.Lodging.LodgingVO;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.vo.BookingVO;
import com.tt.vo.CommonCodeVO;
import com.tt.vo.EarningsVO;
import com.tt.vo.FilteringVO;
import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionHistoryVO;
import com.tt.vo.TransactionRegisterVO;
import com.tt.web.annotation.LoginUser;

@Controller
public class HostController {

	private static Logger logger = LogManager.getLogger(HostController.class);
	
	@Autowired ListingsService listingsService;
	@Autowired UserService userService; 
	/*filtering*/
	/* 호스트가 등록한 숙소 리스트출력 (메뉴 > 숙소) */
	@GetMapping(path = {"/host/listings"})
	public String listings(Model model) {
		List<LodgingVO> lodgings = listingsService.getMyLodgings(1001);
		model.addAttribute("lodgings",lodgings);
		System.out.println(model);
		return "host/listings";
	}
	
	/* 호스트가 등록한 숙소 필터링 (메뉴 > 숙소) */
	@GetMapping(path = {"/host/filtering"})
	public @ResponseBody ResponseEntity<List<LodgingVO>> doFilteringLodgings(FilteringVO filtering){
		//filtering.getKitchen();
		System.out.println("#########################################시작");
		System.out.println(filtering);
		logger.info("filter실행");
		
		List<LodgingVO> lodgings = listingsService.getLodgingsByFiltering(filtering);
		return new ResponseEntity<List<LodgingVO>>(lodgings, HttpStatus.OK);
	}
	
	@Autowired TransactionRegisterService transactionRegisterService;
	@Autowired TransactionHistoryService transactionHistoryService;
	
	/*transaction*/
	/* 호스트 대금 등록 FORM (GET) (메뉴 > 대금수령내역) */
	@GetMapping("/host/trans1")
	public String transactionRegisterForm(@LoginUser UserVO user, String code, Model model) throws Exception{
		List<CommonCodeVO> accountCodes = transactionRegisterService.getCommonCodeByPntCode("PMT01%");
		model.addAttribute("accountCodes", accountCodes);
		List<CommonCodeVO> bankCodes = transactionRegisterService.getCommonCodeByPntCode("PMT02%"); 
		model.addAttribute("bankCodes", bankCodes);
		System.out.println(user.getBirth() + "생년월일");
		model.addAttribute("user", user);	
		
		return "host/trans1";
	}
	/* 호스트 대금 등록 FORM (POST) (메뉴 > 대금수령내역) */
	@PostMapping("/host/trans2")
	public String transactionRegister(@LoginUser UserVO user, TransactionRegisterVO register) {
		TransactionRegisterVO registerBank = new TransactionRegisterVO();
		BeanUtils.copyProperties(register, registerBank);
		
		registerBank.setUserNo(user.getNo());
		transactionRegisterService.insertBank(registerBank);
		System.out.println("############################################################");
		System.out.println(registerBank);
		
		return "host/transactionhome";
	}
	/* 대금수령 리스트 EXCEL(CSV다운로드) (메뉴 > 대금수령내역) */
	@RequestMapping(value="/host/transactionhomeexcel")
	public @ResponseBody void excelDown(@ModelAttribute TransactionHistoryDTO download, HttpServletResponse response, HttpServletRequest request) throws Exception {
	transactionHistoryService.excelDownload(download, response);
	}	
	
	
	
	@Autowired EarningsService earningsService;
	
	/*earnings*/
	/* 호스트 인사이트 수입 (메뉴 > 인사이트 > 수입) */
	@RequestMapping("host/earnings")
	public String earnings(@LoginUser UserVO user, Model model) throws Exception {
//		Map<String, Object> map = new HashedMap<String, Object>();
//		map.put("userNo", user.getNo());
//		map.put("startDate", DateUtils.danew Date()));
//		
//		EarningsVO earnings = earningsService.getEarningsByHashMap(map);
//		model.addAttribute("chart", earnings);
//		아래랑 코드가 똑같으니까 여기는 그냥 페이지만 이동시켜 줄 것이다.

		return "host/earnings";
	}
	
	/* 호스트 대금 등록 HOME & 대금수령 리스트 출력 (메뉴 > 대금수령내역) */
	@GetMapping("/host/transactionhome")
	public String transactionRegisterBankAccount (@LoginUser UserVO user, Model model) throws Exception {	

		List<TransactionHistoryDTO> transHistory = transactionHistoryService.getAllTransactionHistoryForExcel(user.getNo());
		
		System.out.println("트랜잭션!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println(transHistory);
		model.addAttribute("transHistory", transHistory);
		return "host/transactionhome";
	}
	
	@GetMapping("/host/historyJson")
	@ResponseBody
	public Map<String, Object> historyJson(@LoginUser UserVO user, String bankAccount, 
		@DateTimeFormat(pattern = "yyyy-MM")Date date, Model model) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNo", user.getNo());
		//map.put("createdDate", date);
		TransactionHistoryDTO transHistory = transactionHistoryService.getAllTransactionHistoryByUserNo(user.getNo());
		map.put("lodgingName", transHistory.getLodgingName());
		map.put("createdDate", transHistory.getCreatedDate());
		map.put("bankAccount", transHistory.getBankAccount());
		
//	if(bankAccount != transHistory.getBankAccount()) {
	//		return map;
		//} else {
		//}
		System.out.println("히스토리");
		System.out.println(transHistory);
		
		System.out.println("맵ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ");
		System.out.println(map);
		
		return map;
	}
	
	@RequestMapping("/host/earningsJson")
	@ResponseBody
	public Map<String, Object> earningsJson(@LoginUser UserVO user, @DateTimeFormat(pattern = "yyyy-MM-dd")Date startDate, Model model) throws Exception {
		Map<String, Object> map = new HashedMap<String, Object>();
		map.put("userNo", user.getNo());
		map.put("startDate", startDate);
		
		EarningsVO earnings = earningsService.getEarningsByHashMap(map);
		
		List<EarningsVO> earningsList = earningsService.getEarningsChartbyHashMap(map);

		Map<String, Object> result = new HashMap<>();
		result.put("earnings", earnings);
		result.put("chart", earningsList);
		
		System.out.println("뤼절트" + result);
		return result;
	}
	
	@Scheduled(cron= "0/10 * * * * * ?")
	public void updateEarnings(@LoginUser UserVO user) throws Exception {
		earningsService.updateEarnings(user.getNo());
		
		System.out.println("실행" + new Date());
	}
	
}