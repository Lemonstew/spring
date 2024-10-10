package com.example.spring.dto.c27;

import lombok.Data;

@Data
public class Order {
    private int orderId;
    private int customerId;
    private int employeeId;
    private String orderDate;
    private int shipperId;
}
