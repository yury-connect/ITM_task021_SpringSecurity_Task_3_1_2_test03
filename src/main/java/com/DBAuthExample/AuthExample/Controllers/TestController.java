package com.DBAuthExample.AuthExample.Controllers;

import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("test/")
@AllArgsConstructor
public class TestController {

    /*
    welcome — страница будет показываться всем, даже без прохождения авторизации;
     */
    @GetMapping("/welcome")
    public String welcome(){
        return "This is unprotected page";
    }

    /*
    users — страница для тех, кто имеет роль USER в базе данных;
     */
    @GetMapping("/users")
    @PreAuthorize("hasAuthority('ROLE_USER')")
    public String pageForUser(){
        return "This is page for only users";
    }


    /*
    admins — для всех админов;
     */
    @GetMapping("/admins")
    @PreAuthorize("hasAuthority('ROLE_ADMIN')")
    public String pageForAdmins(){
        return "This is page for only admins";
    }


    /*
    all — для всех, но после авторизации.
     */
    @GetMapping("/all")
    public String pageForAll(){
        return "This is page for all employees";
    }
}