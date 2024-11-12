package com.example.spring.dto.a5;

import lombok.Data;

import java.util.List;

@Data
public class SJ {
    private String name;
    private String address;
    private Boolean married;
    private List<String> items;
    private Company company;
}
