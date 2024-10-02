package com.example.spring.controller;

import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@ManagedResource("main22")
public class Controller22 {
    @GetMapping("sub1")
    public void s1() {

    }
}
