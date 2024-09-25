package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/main4")
@RequestMapping("main4") // 앞의 '/'를 제거하고 사용해도 됨
public class Controller4 {

    // request handler method

    // localhost:8080/main4/sub1
    @RequestMapping("/sub1")
    public void sub1(){
        System.out.println("Controller4.sub1");
    }

    @RequestMapping("/sub2")
    public void sub2() {
        System.out.println("Controller4.sub2");
    }

}
