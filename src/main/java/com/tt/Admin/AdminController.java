package com.tt.Admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tt.User.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired(required = false)
    private AdminService adminService;

    @RequestMapping(value = "/admin/index")
    public String Menu() {

        return "Admin/Aindex";
    }

    @RequestMapping(value = "/admin/userList")
    public String MemberList() {
        return "Admin/UserList";
    }

    //produces 속성을 이용해 Response의 Content-Type을 제어할 수 있다
    @RequestMapping(value = "/admin/getUsers", produces="application/json;charset=UTF-8")
    @ResponseBody
    public String UserList() {
        List<UserVO> userList = adminService.getUsers();
        String str = "";

        ObjectMapper mapper = new ObjectMapper();
        try {
            str = mapper.writeValueAsString(userList);
        } catch (Exception e) {
            System.out.println("first() mapper : " + e.getMessage());
        }

        return str;
    }

    @RequestMapping(value = "/admin/detailUser", produces="application/json; charset=UTF-8", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Map<String, Object> detailUser(@RequestParam("no") int userNo) {
        Map<String, Object> retVal = new HashMap<String, Object>();
        try {
            UserVO res = adminService.detailUser(userNo);

            retVal.put("res", "OK");
            retVal.put("UserVO", res);
        } catch(Exception e) {
            System.out.println(e.getMessage());
            retVal.put("res", "FAIL");
            retVal.put("message", "상세보기가 되지 않았습니다.");
        }

        return retVal;
    }

    @RequestMapping(value = "/admin/userInfo", method = {RequestMethod.GET, RequestMethod.POST})
    public String UserInfo(@RequestParam("no") int userNo, Model model) {
        try {
            UserVO res = adminService.detailUser(userNo);

            model.addAttribute("UserVO", res);
            System.out.println("값 줘봐 : " + model.getAttribute("UserVO"));

        } catch(Exception e) {
            System.out.println("UserInfo : " + e.getMessage());
        }
        return "Admin/Info/UserInfo";
    }
}
