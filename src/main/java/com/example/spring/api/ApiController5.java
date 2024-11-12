package com.example.spring.api;

import com.example.spring.dto.a5.Book;
import com.example.spring.dto.a5.Company;
import com.example.spring.dto.a5.SJ;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/api/main5")
public class ApiController5 {
    @GetMapping("sub1")
    @ResponseBody
    public String method1() {
        System.out.println("ApiController5.method1");
        return "sub1";
    }

    @GetMapping("sub3")
    @ResponseBody
    public String method3() {
        System.out.println("ApiController5.method3");
        return "seoul";
    }

    @GetMapping("sub4")
    @ResponseBody
    public Map<String, Object> sub4() {
        return Map.of("name", "kim",
                "age", 44);
    }

    @GetMapping("sub5")
    @ResponseBody
    public Map<String, Object> sub5() {
        return Map.of("title", "Barrage",
                "designer", "Simone Luciani",
                "content", "Water power to Electric",
                "price", 279,
                "raiting", 8.2,
                "weight", "high");
    }

    @GetMapping("sub6")
    @ResponseBody
    public Map<String, Object> sub6() {
        return Map.of("name", "son", "items", List.of("chicken", "donkatsu", "pizza"),
                "team", List.of("ㅌㅌㄴ", "ㄹㅂㅋㅈ"));
    }

    @GetMapping("sub7")
    @ResponseBody
    public Map<String, Object> sub7() {
        return Map.of("product", Map.of("name", "Lorenzo", "price", 64, "quantity", 800), "company", Map.of("location", List.of("From Italy", "To Republic of Korea"))
        );
    }

    @GetMapping("sub8")
    @ResponseBody
    public Book sub8() {
        Book book = new Book();
        book.setPrice(50000);
        book.setAuthor("헤밍웨이");
        book.setContent("소설");
        book.setTitle("노인과 바다");

        return book;
    }

    @GetMapping("sub9")
    @ResponseBody
    public SJ method9() {
        SJ sj = new SJ();
        Company company = new Company();
        company.setName("무직");
        company.setLocation("everywhere");
        sj.setName("성준");
        sj.setAddress("금천구");
        sj.setMarried(true);
        sj.setItems(List.of("메롱", "약오르지", "안뇽", "낄낄"));
        sj.setCompany(company);

        return sj;

    }

    @GetMapping("sub10")
    @ResponseBody
    public List<Book> sub10() {
        Book book1 = new Book();

        return null;
    }
}
