package com.tt.Wishlist;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tt.User.UserVO;
import com.tt.web.annotation.LoginUser;

@Controller
public class WishlistController {
	@GetMapping(path = {"/wishlist/add/json"})
	@ResponseBody
	public void AddWishlist(
			@RequestParam(value="wishName", required=true) String wishlistName,
			@LoginUser UserVO user
			){
		
	}
}