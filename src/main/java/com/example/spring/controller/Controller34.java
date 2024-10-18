package com.example.spring.controller;

import com.example.spring.dto.c34.*;
import lombok.RequiredArgsConstructor;

import com.example.spring.mapper.Mapper04;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main34")
@RequiredArgsConstructor
public class Controller34 {

    final Mapper04 mapper04;

    @GetMapping("sub1")
    public void sub1() {
        String name = mapper04.getProductName();
        System.out.println(name);
    }

    @GetMapping("sub2")
    public void sub2() {
        String s = mapper04.select2();
        String s1 = mapper04.select3();
        Double v = mapper04.select4();
        System.out.println("s = " + s);
        System.out.println("s1 = " + s1);
        System.out.println("v = " + v);


    }

    @GetMapping("sub3")
    public void sub3() {
        List<String> list = mapper04.select8();

        list.forEach(System.out::println);

        List<String> list1 = mapper04.select9();
        list1.forEach(System.out::println);
        List<LocalDate> list2 = mapper04.select10();
        list2.forEach(System.out::println);
        List<Double> list3 = mapper04.select11();
        list3.forEach(System.out::println);
    }

    @GetMapping("sub4")
    public void sub4() {
        Map<String, String> result1 = mapper04.select12();
        System.out.println(result1);

        Map<String, String> result2 = mapper04.select13();
        System.out.println(result2);

        Map<String, Object> result3 = mapper04.select14();
        System.out.println(result3);
    }

    @GetMapping("sub5")
    public void sub5() {
        Customer c = mapper04.select17();
        System.out.println("c = " + c);

        Product p = mapper04.select18();
        System.out.println("p = " + p);

        Employee e = mapper04.select19();
        System.out.println("e = " + e);

        Supplier s = mapper04.select20();
        System.out.println("s = " + s);

        Map<Order, Customer> m1 = mapper04.select21();
        System.out.println("m1 = " + m1);

        List<Map<Product, Category>> lm1 = mapper04.select23();
        lm1.forEach(System.out::println);

        List<Map<String, Object>> lm2 = mapper04.select24();
        System.out.println("lm2 = " + lm2);
    }
}
