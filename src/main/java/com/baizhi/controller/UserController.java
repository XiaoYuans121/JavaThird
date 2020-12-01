package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import com.sun.deploy.net.HttpRequest;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("findAll")
    public String findAll(HttpRequest request){
        List<User> list = userService.findAll();
        request.setAttribute("list",list);
    }

}
