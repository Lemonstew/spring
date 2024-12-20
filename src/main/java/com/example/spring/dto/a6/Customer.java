package com.example.spring.dto.a6;

import lombok.Data;
import org.springframework.stereotype.Service;

@Data
public class Customer {
    private Integer id;
    private String name;
    private String contact;
    private String address;
    private String city;
    private String postalCode;
    private String country;
}
