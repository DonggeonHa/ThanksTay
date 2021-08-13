package com.tt.Host;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.BookingVO;
import com.tt.vo.EarningsVO;
import com.tt.vo.FilteringVO;
import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionHistoryVO;
import com.tt.vo.TransactionRegisterVO;

@Controller
public class HostController {

	private static Logger logger = LogManager.getLogger(HostController.class);
	
	@Autowired ListingsService listingsService;
	
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
	

	/* 호스트 대금 등록 FORM (GET) (메뉴 > 대금수령내역) */
	@GetMapping("/host/trans1")
	public String transactionRegisterForm() {
		return "host/trans1";
	}
	/* 호스트 대금 등록 FORM (POST) (메뉴 > 대금수령내역) */
	@PostMapping("/host/trans1")
	public String transactionRegister(TransactionRegisterVO register) {
		TransactionRegisterVO registerBank = new TransactionRegisterVO();
		BeanUtils.copyProperties(register, registerBank);
		
		transactionRegisterService.insertBank(registerBank);
		
		return "host/transactionhome";
	}
	
	/* 대금수령 리스트 EXCEL(CSV다운로드) (메뉴 > 대금수령내역) */
//	@RequestMapping(value="/host/transactionhome")
//	public @ResponseBody void excelDown(@ModelAttribute TransactionHistoryDTO download, HttpServletResponse response, HttpServletRequest request) throws Exception {
//		transactionHistoryService.excelDownload(download, response);
//	}

	@Autowired EarningsService earningsService;
	
	/* 호스트 인사이트 수입 (메뉴 > 인사이트 > 수입) */
	@GetMapping("host/earnings")
	public String earnings() {
		return "host/earnings";
	}
	
	@GetMapping("/host/earningsJson")
	public @ResponseBody EarningsVO earningsJson(@RequestParam(name="userNo", required=false, defaultValue="9999")int userNo,
			@RequestParam(name="startDate", required=false)@DateTimeFormat(pattern = "yyyy-MM-dd") Date startDate, Model model)	throws Exception {
		Map<String, Object> map = new HashedMap<String, Object>();
		map.put("userNo", userNo);
		map.put("startDate", startDate);
		EarningsVO bookings = earningsService.checkBookingsByHashMap(map);
		return bookings;
		
		
		
		//model.addAttribute("bookings", bookings);
		//System.out.println("###################bookings");
		//System.out.println(bookings);
		//return "host/earnings";
	}
	
	//@GetMapping("host/earnings")
	//public ResponseEntity<BookingVO> earnings() {
	//	BookingVO booking = earningsService.checkBookingsByHashMap(map);
	//	
	//}
	
	/* 호스트 대금 등록 HOME & 대금수령 리스트 출력 (메뉴 > 대금수령내역) */
	@GetMapping("/host/transactionhome")
	public String getAllTransactionHistory(Model model) throws Exception {
		List<TransactionHistoryDTO> transHistory = transactionHistoryService.getAllTransactionHistoryForExcel(9999);
		System.out.println("#########################################시작");
		System.out.println(transHistory);
		model.addAttribute("transHistory", transHistory);
		return "host/transactionhome";
	}
		

}