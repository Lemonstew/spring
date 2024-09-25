package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Arrays;

@Controller
@RequestMapping("main5")
public class Controller05 {

    // ?name=son&address=seoul
    @RequestMapping("sub1")
    public void sub1(@RequestParam("name") String p1,
                     @RequestParam("address") String p2) {
        System.out.println("p1 = " + p1);
        System.out.println("p2 = " + p2);
    } // name, address 가 반드시 들어가야 함

    @RequestMapping("sub3")
    public void sub3 (String name,
                      String address) {
        System.out.println("name = " + name);
        System.out.println("address = " + address);
    }

    @RequestMapping ("sub4")
    public void sub4 (@RequestParam(required = false) String name,
                      @RequestParam(required = false) String address) {
        System.out.println("name = " + name);
        System.out.println("address = " + address);
    }

    @RequestMapping ("sub5")
    public void sub5 (@RequestParam(defaultValue = "게스트") String name,
                      @RequestParam(defaultValue = "서울역") String address) {
        System.out.println("name = " + name);
        System.out.println("address = " + address);
    }

    // /main5/sub6?name=손&age=33&score=3.14&num=55&point=99.1234
    @RequestMapping("sub6")
    public void sub6 (String name,
                      int age,
                      double score,
                      Integer num,
                      Double point) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
        System.out.println("score = " + score);
        System.out.println("num = " + num);
        System.out.println("point = " + point);
    }

    // /main5/sub7
    // /main5/sub7?email=gmail
    // /main5/sub7?email=gmail&email=yahoo
    // /main5/sub7?email=gmail&email=yahoo&email=daum
    @RequestMapping("sub7")
    public void method7 (String[] email) {
        System.out.println("email = " + Arrays.toString(email));
    }

    // /main5/sub8?hobby=축구&hobby=야구&hobby=농구&name=강인&address=서울&point=7.1234&age=55

    @RequestMapping("sub8")
    public void sub8 (String[] hobby,
                      String[] name,
                      String[] address,
                      Integer[] age,
                      Double[] point) {
        System.out.println("hobby = " + Arrays.toString(hobby));
        System.out.println("name = " + Arrays.toString(name));
        System.out.println("address = " + Arrays.toString(address));
        System.out.println("age = " + Arrays.toString(age));
        System.out.println("point = " + Arrays.toString(point));
    }

}
