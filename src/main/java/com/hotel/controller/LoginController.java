package com.hotel.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Log4j
public class LoginController {

    @GetMapping("/security/login")
    public void loginInput(Model model) {

    }

}
