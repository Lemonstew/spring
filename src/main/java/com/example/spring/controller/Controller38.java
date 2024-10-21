package com.example.spring.controller;

import com.example.spring.dto.c38.Customer;
import com.example.spring.dto.c38.Employee;
import com.example.spring.mapper.Mapper08;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;

@Controller
@RequestMapping("main38")
@RequiredArgsConstructor
public class Controller38 {
    private final Mapper08 mapper08;

    @GetMapping("sub1")
    public void method1() {
        mapper08.update1();
    }

    @GetMapping("sub2")
    public void method2() {
        mapper08.update2("흥민", "득점왕", "토트넘", "런던", "3333", "영국", 8);
    }

    @GetMapping("sub3")
    public void method3() {
        Customer customer = new Customer();
        customer.setId(2);
        customer.setName("kaka");
        customer.setContactName("icon");
        customer.setAddress("Rio");
        customer.setCity("San Paulo");
        customer.setCountry("Brazil");
        customer.setPostalCode("5555");

        mapper08.update3(customer);
    }

    // 순서가 중요한가?
    @GetMapping("sub4")
    public void method4(String name,
                        String contactName,
                        String address,
                        String city,
                        String postalCode,
                        String country,
                        Integer id) {

        mapper08.update2(name, contactName, address, city, postalCode, country, id);
    }

    // /main38/sub5?name=ahn&contactName=forward&address=gangnam&city=seoul&postalCode=4444&country=korea&id=1
    @GetMapping("sub5")
    public void method5(Customer customer) {
        mapper08.update3(customer);
    }

    @GetMapping("sub6")
    public void method6(Employee employee) {
        mapper08.update4(employee);
    }

    @GetMapping("sub7")
    public void method7(Integer id, Model model) {
        Customer customer = mapper08.select1(id);
        if (customer != null) {
            model.addAttribute("customer", customer);
        }

    }

    @PostMapping("sub8")
    public void method8(Customer customer) {
        mapper08.update3(customer);
    }

    @GetMapping("sub9")
    public void method9() {

    }

    @PostMapping("sub10")
    public String method10(Employee employee) {
        mapper08.update4(employee);

        return "redirect:/main38/sub9";
    }

    @GetMapping("sub11")
    public void method11() {
        Customer customer = new Customer();
        customer.setName("시모네");
        customer.setContactName("뉴클리엄");
        customer.setPostalCode("333");
        customer.setCity("피렌체");
        customer.setCountry("이탈리아");
        customer.setAddress("로마");

        System.out.println("입력 전" + customer);
        mapper08.insert01(customer);
        System.out.println("입력 후" + customer);
    }

    @GetMapping("sub12")
    public void method12() {
        Employee employee = new Employee();
        employee.setFirstName("David");
        employee.setLastName("Turczi");
        employee.setBirthDate(LocalDate.parse("2188-01-01"));
        employee.setPhoto("abg.jpg");
        employee.setNotes("'Anachrony' and 'Nucleum', Let's go");

        // employee 속성 채우기

        System.out.println("입력전" + employee);
        mapper08.insert02(employee);
        System.out.println("입력후" + employee);
    }
}
