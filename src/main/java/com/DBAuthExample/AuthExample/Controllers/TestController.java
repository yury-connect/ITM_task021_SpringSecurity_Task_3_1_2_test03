package com.DBAuthExample.AuthExample.Controllers;

import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("test/")
@AllArgsConstructor
public class TestController {

    /*
    welcome — страница будет показываться всем, даже без прохождения авторизации;
     */
    @GetMapping("/welcome")
    public String welcome(){
        return "welcome_page";
    }


    /*
    users — страница для тех, кто имеет роль USER в базе данных;
     */
    @GetMapping("/users")
    @PreAuthorize("hasAuthority('ROLE_USER')")
    public String pageForUser(){
        return "users_page";
    }


    /*
    admins — для всех админов;
     */
    @GetMapping("/admins")
    @PreAuthorize("hasAuthority('ROLE_ADMIN')")
    public String pageForAdmins(){
        return "admin_page";
    }


    /*
    all — для всех, но после авторизации.
     */
    @GetMapping("/all")
    public String pageForAll(){
        return "all_page";
    }
}