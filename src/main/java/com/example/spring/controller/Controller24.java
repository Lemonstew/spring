package com.example.spring.controller;

import com.example.spring.dto.c12.Product;
import com.example.spring.dto.c24.Customer;
import com.example.spring.dto.c24.Employees;
import com.example.spring.dto.c24.Products;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main24")
public class Controller24 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void sub1() throws SQLException {
        String sql = """
                SELECT DISTINCT City
                FROM Customers
                """;
        // 연결
        Connection con = dataSource.getConnection();
        // 쿼리 실행 준비
        Statement stmt = con.createStatement();
        // 쿼리 실행
        ResultSet rs = stmt.executeQuery(sql);

        try (con; stmt; rs) {
            // 실행 결과 가공
            while (rs.next()) {
                System.out.println(rs.getString("City"));
            }
        }
    }

    @GetMapping("sub2")
    public void sub2(Model model) throws SQLException {
        String sql = """
                SELECT CustomerName, ContactName, Address
                FROM Customers
                """;
        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (con; stmt; rs) {
            List<Customer> list = new ArrayList<>();
            while (rs.next()) {
                String name = rs.getString("CustomerName");
                String contact = rs.getString("ContactName");
                String address = rs.getString("Address");
                Customer customer = new Customer();
                customer.setName(name);
                customer.setContactName(contact);
                customer.setAddress(address);

                list.add(customer);
            }
            model.addAttribute("customerList", list);
        }
        // jsp 로 forward
    }

    @GetMapping("sub3")
    public void sub3(Model model) throws SQLException {
        String sql = """
                SELECT EmployeeID, FirstName, LastName, BirthDate 
                FROM Employees
                """;
        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (con; stmt; rs) {
            List<Employees> list = new ArrayList<>();
            while (rs.next()) {
                String id = rs.getString("EmployeeID");
                String f = rs.getString("FirstName");
                String l = rs.getString("LastName");
                String b = rs.getString("BirthDate");
                // sql의 순서에 따라 숫자(컬럼인덱스)만을 기입해도 됨.
                Employees employees = new Employees();
                employees.setId(id);
                employees.setF(f);
                employees.setL(l);
                employees.setB(b);

                list.add(employees);
            }
            model.addAttribute("employeeList", list);
        }
    }

    @GetMapping("sub4")
    public void sub4(Model model) throws SQLException {
        String sql = """
                SELECT ProductID, ProductName, Unit, Price
                FROM Products
                """;
        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (con; stmt; rs) {
            List<Products> list = new ArrayList<>();
            while (rs.next()) {
                Products products = new Products();
                products.setProductID(rs.getInt(1));
                products.setProductName(rs.getString(2));
                products.setUnit(rs.getString(3));
                products.setPrice(rs.getInt(4));

                list.add(products);
            }
            model.addAttribute("productList", list);
        }
    }

}
