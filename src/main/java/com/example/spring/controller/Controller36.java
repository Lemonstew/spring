package com.example.spring.controller;

import com.example.spring.mapper.Mapper06;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("main36")
public class Controller36 {
    final Mapper06 mapper06;

    @GetMapping("sub1")
    public void sub1() {
        String name = mapper06.select01(1);
        System.out.println("name = " + name);

        System.out.println(mapper06.select01(2));
        System.out.println(mapper06.select01(3));
        System.out.println(mapper06.select01(4));

        System.out.println();

        System.out.println(mapper06.select02(1));
        System.out.println(mapper06.select02(2));
        System.out.println(mapper06.select02(3));
        System.out.println(mapper06.select02(4));
        System.out.println(mapper06.select02(5));
    }

    @GetMapping("sub2")
    public void sub2() {
        List<String> list = mapper06.select03("Germany", "USA");
        list.forEach(System.out::println);

        System.out.println();

        List<String> list2 = mapper06.select04("100", "300");
        list2.forEach(System.out::println);

        List<String> list3 = mapper06.select05("1960-01-01", "1970-01-01");
        list3.forEach(System.out::println);
    }

    @GetMapping("sub3")
    public void sub3(Integer id) {
        String name = mapper06.select01(id);
        System.out.println("name = " + name);
    }

    @GetMapping("sub4")
    public void sub4(String n1, String n2) {
        List<String> c = mapper06.select03(n1, n2);
        c.forEach(System.out::println);
    }
}
