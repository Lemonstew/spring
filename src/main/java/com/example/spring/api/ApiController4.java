package com.example.spring.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api/main4")
public class ApiController4 {

    @GetMapping("sub1/{name}")
    public void sub1(@PathVariable String name) { // 위의 값고 아래 파라미터의 값이 다를 경우는 기재해야 함
        System.out.println("name = " + name);
    }

    @GetMapping("sub2/{quantity}")
    public void sub2(@PathVariable Integer quantity) {
        System.out.println("quantity = " + quantity);
    }

    @GetMapping("sub3/{address}")
    public void sub3(@PathVariable String address) {
        System.out.println("address = " + address);
    }
}
