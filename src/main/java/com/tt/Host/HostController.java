package com.tt.Host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.tt.Lodging.LodgingVO;

@Controller
public class HostController {

	String userId = "19941022";
	
	@Autowired ListingsService listingsService;
	
	
	@GetMapping(path = {"/host/listings"})
	public String listings(Model model) {
		List<LodgingVO> lodgings = listingsService.getMyLodgings("userId");
		model.addAttribute("lodgings",lodgings);
		
		return "host/listings";
	}
}
