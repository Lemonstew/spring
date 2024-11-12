package com.example.spring.api;

import com.example.spring.dto.a2.Book;
import com.example.spring.dto.a2.Person;
import com.example.spring.dto.a2.Player;
import com.example.spring.dto.a2.Product;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("api/main2")
@RequiredArgsConstructor
public class ApiController2 {
    @PostMapping("sub1")
    public void method1(@RequestBody Person person) {
        System.out.println(person);
    }

    @PostMapping("sub2")
    public void method2(@RequestBody Book book) {
        System.out.println(book);
    }

    @PostMapping("sub3")
    public void method3(@RequestBody Player player) {
        System.out.println(player);
    }

    @PostMapping("sub4")
    public void method4(@RequestBody Product product) {
        System.out.println(product);
    }

    @PostMapping("sub5")
    public void method5(@RequestBody List<String> items) {
        System.out.println(items);
    }

    @PostMapping("sub6")
    public void method6(@RequestBody List<Object> boardgame) {
        System.out.println(boardgame);
    }

    @PostMapping("sub7")
    public void method7(@RequestBody List<Book> books) {
        System.out.println(books);
    }
}
