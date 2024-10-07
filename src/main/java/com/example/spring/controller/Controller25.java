package com.example.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void sub1(String country, Model model) {

        // /main25/sub1 에 쿼리스트링을 덧붙여서 하면 되지 않는가?
        String sql = STR."""
                SELECT CustomerName
                FROM Customers
                WHERE Country = '\{country}'
                """;

        System.out.println();
        System.out.println(country + "에 있는 고객들");
        List<String> list = new ArrayList<>();
        try {
            Connection conn = dataSource.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            try (conn; stmt; rs) {
                while (rs.next()) {
                    String name = rs.getString("CustomerName");
                    System.out.println("name = " + name);
                }
                model.addAttribute("nameList", list);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 특정 가격인 상품명 조회
    // 메소드, jsp 작성
    @GetMapping("sub2")
    public void sub2(Double price, Model model) throws SQLException {
        String sql = STR."""
                SELECT ProductName
                FROM Products
                WHERE Price = "\{price}"
                """;
        System.out.println();
        System.out.println(price + "$ 상품");
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        List<Double> list = new ArrayList<>();
        try (conn; stmt; rs) {
            while (rs.next()) {
                String name = rs.getString("ProductName");
                System.out.println("name = " + name);
            }
            model.addAttribute("nameList", list);
        }
    }
}
