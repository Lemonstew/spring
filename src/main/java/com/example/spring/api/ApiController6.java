package com.example.spring.api;


import com.example.spring.dto.a6.Customer;
import com.example.spring.dto.a6.BoardGame;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

//@Controller
//@ResponseBody
@RestController
@RequestMapping("/api/main6")
@RequiredArgsConstructor
public class ApiController6 {
    private final CustomerService service;
    private final BoardGameService bgService;

    @GetMapping("sub1/{customerID}")
    // {customerID} 부분이
//    @PathVariable 을 통해
//    customerID로 전달
    public Customer get(@PathVariable Integer customerID) {
        return service.getCustomer(customerID);
    }

    @GetMapping("sub1/{geekRank}")
    public BoardGame getBoardGame(@PathVariable Integer rank) {
        return bgService.getBoardGame(rank);
    }
}
