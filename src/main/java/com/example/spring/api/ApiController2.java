package com.example.spring.api;

import com.example.spring.dto.a2.Person;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("api/main2")
@RequiredArgsConstructor
public class ApiController2 {
    @PostMapping("sub1")
    public void method1(@RequestBody Person person) {
        System.out.println(person);
    }
}
