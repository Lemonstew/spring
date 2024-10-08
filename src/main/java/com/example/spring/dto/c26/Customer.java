package com.example.spring.dto.c26;

import lombok.Data;

@Data
public class Customer {
    private int customerId;
    private String customerName;
    private String contactName;
    private String address;
    private String city;
    private String postalCode;
    private String country;
}
