package com.example.spring.dto.c27;

import lombok.Data;

@Data
public class Order {
    private String orderId;
    private String customerId;
    private String employeeId;
    private String orderDate;
    private String shipperId;
}
