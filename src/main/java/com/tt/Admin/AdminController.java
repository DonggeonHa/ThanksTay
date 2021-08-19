package com.tt.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @Autowired(required = false)
    private AdminService adminService;

    @RequestMapping(value = "/admin/index")
    public String Menu() {

        return "Admin/Aindex";
    }
}
