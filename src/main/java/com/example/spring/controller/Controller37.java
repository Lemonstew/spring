package com.example.spring.controller;

import com.example.spring.mapper.Mapper07;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main37")
@RequiredArgsConstructor
public class Controller37 {
    final Mapper07 mapper07;

    @GetMapping("sub1")
    public void sub1(Integer id) {
        int cnt = mapper07.delete1(id);
        System.out.println(cnt + " 개 행 삭제됨");
    }

    @GetMapping("sub2")
    public void sub2(Integer id) {
        int cnt = mapper07.delete2(id);
        System.out.println(cnt + "개 행 삭제됨");
    }

    @GetMapping("sub3")
    public void sub3(String name,
                     String city,
                     String country) {
//
//        name = "son",
//        city = "seoul",
//        country = "korea";
//
//        int cnt = mapper07.
    }

//    @GetMapping("sub5")
//    public void sub5(Model model) {
//        List<Map<String, Object>> customers = mapper07.select2();
//        model.addAttribute("customerList", customers);
//    }
//
//    @PostMapping("sub6")
//    public String sub6(String name,
//                       String city,
//                       String country) {
//        int c = mapper07.insert1(name, city, country);
//        System.out.println(c + "명 고객 정보 등록됨");
//
//        return "redirect:/main37/sub5";
//    }

    @GetMapping("sub7")
    public void sub7(Model model) {
        List<Map<String, Object>> products = mapper07.select2();
        model.addAttribute("productList", products);
    }

    @PostMapping("sub8")
    public String sub8(String name,
                       String unit,
                       Double price) {
        int c = mapper07.insert2(name, unit, price);
        System.out.println(c + "개의 상품 정보가 성공적으로 등록되었습니다.");

        return "redirect:/main37/sub7";
    }
}
