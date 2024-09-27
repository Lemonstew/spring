package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("special")
public class Exercise {
    @RequestMapping("BGG")
    public void bgg(Model model) {

    }
}
