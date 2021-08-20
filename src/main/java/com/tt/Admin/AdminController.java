package com.tt.Admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tt.User.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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
            System.out.println("memberList 변환 : " + str);
        } catch (Exception e) {
            System.out.println("first() mapper : " + e.getMessage());
        }

        return str;
    }
}
