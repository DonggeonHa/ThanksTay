package com.tt.Lodging;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tt.vo.PriceVO;

@Controller
public class BookingController {
	
	@Autowired
	BookingService bookingService;
	
	@GetMapping("/bookinglist")
	public String bookinglist() {
		return "lodging/list";
	}
	
	@GetMapping("/booking")
	public String booking(@RequestParam("no") int lodgingNo, Model model) throws JsonProcessingException {
		LodgingVO lodging = bookingService.getLodgingDetail(lodgingNo);
		model.addAttribute("lodging", lodging);
		
		
		List<PriceVO> priceList = bookingService.getVacancy(lodgingNo);
		
		List<Date> dates = new ArrayList<Date>();
		for(PriceVO price : priceList) {
			dates.add(price.getOpenDate());
		}
		
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonText1 = mapper.writeValueAsString(dates);
		String jsonText = mapper.writeValueAsString(priceList);
		
		
		model.addAttribute("json1", jsonText1);
		model.addAttribute("json", jsonText);
		
		return "lodging/booking";
	}
}