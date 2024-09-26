package com.example.spring.dto.c12;

public class Product {
    private int id;
    private String name;
    private int price;
    private int quantity;
    private String description;


    public Product(int id, String name, int price, int quantity, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
    }
}
