package com.example.spring.controller;

import com.example.spring.dto.c26.Customer;
import com.example.spring.dto.c26.Product;
import com.example.spring.dto.c28.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
@RequestMapping("main28")
public class Controller28 {

    @Autowired
    DataSource dataSource;

    @PostMapping("sub1")
    public void sub1(String name, String contact) {
        String sql = """
                INSERT INTO Customers
                (CustomerName, ContactName)
                VALUES
                (?, ?)
                """;

        try {
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, contact);
            //        pstmt.executeQuery(); // SELECT
            pstmt.executeUpdate(); // INSERT, UPDATE, DELETE
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @GetMapping("sub2")
    public void sub2() {

    }

    @GetMapping("sub3")
    public void sub3() {

    }

    @PostMapping("sub4")
    public String sub4(String name,
                       Double price,
                       RedirectAttributes rttr) {
        String sql = """
                INSERT INTO Products
                (ProductName, Price)
                VALUES
                (?, ?);
                """;

        try {
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setDouble(2, price);
            int count = pstmt.executeUpdate();
            if (count == 1) {
                rttr.addFlashAttribute("message", "new Product added");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "redirect:/main28/sub3";
    }

    @GetMapping("sub5")
    public void sub5(Integer id, Model model) {
        String sql = """
                SELECT * FROM Customers
                WHERE CustomerId = ?
                """;
        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerId"));
                customer.setName(rs.getString("CustomerName"));
                customer.setContactName(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setCode(rs.getString("PostalCode"));
                customer.setCountry(rs.getString("Country"));
                model.addAttribute("customer", customer);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @PostMapping("sub6")
    public String sub6(Integer id,
                       RedirectAttributes rttr) {
        String sql = """
                DELETE FROM Customers
                WHERE CustomerId = ?
                """;
        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt;) {
                pstmt.setInt(1, id);
                int count = pstmt.executeUpdate();
                if (count == 1) {
                    rttr.addFlashAttribute("message", "No." + id + " customer is deleted");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        rttr.addAttribute("id", id);
        return "redirect:/main28/sub5";
    }

    @GetMapping("sub7")
    public void sub7(String id, Model model) {
        String sql = """
                SELECT *
                FROM Products
                WHERE ProductId = ?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Product product = new Product();
                product.setId(rs.getString("ProductID"));
                product.setName(rs.getString("ProductName"));
                product.setCategoryId(rs.getString("CategoryID"));
                product.setSupplierId(rs.getString("SupplierID"));
                product.setUnit(rs.getString("Unit"));
                product.setPrice(rs.getString("Price"));
                model.addAttribute("product", product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @PostMapping("sub8")
    public String sub8(String id,
                       RedirectAttributes rttr) {
        String sql = """
                DELETE FROM Products
                WHERE ProductId = ?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt;) {
                pstmt.setString(1, id);
                int count = pstmt.executeUpdate();
                if (count == 1) {
                    rttr.addFlashAttribute("message", "No." + id + " product is deleted");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "redirect:/main28/sub7";
    }

    @PostMapping("sub9")
    public String sub9(Customer customer,
                       RedirectAttributes rttr) {
        String sql = """
                UPDATE Customers
                SET CustomerName = ?,
                ContactName = ?,
                Address = ?,
                City = ?,
                PostalCode = ?,
                Country = ?
                WHERE CustomerId = ?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt;) {
                pstmt.setString(1, customer.getName());
                pstmt.setString(2, customer.getContactName());
                pstmt.setString(3, customer.getAddress());
                pstmt.setString(4, customer.getCity());
                pstmt.setString(5, customer.getCode());
                pstmt.setString(6, customer.getCountry());
                pstmt.setString(7, customer.getId());
                pstmt.executeUpdate();
                rttr.addFlashAttribute("message", "Update Complete");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        rttr.addAttribute("id", customer.getId());
        return "redirect:/main28/sub10";
    }

    @GetMapping("sub10")
    public void sub10(String id, Model model) {
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerId = ?
                """;
        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt;) {
                pstmt.setString(1, id);
                ResultSet rs = pstmt.executeQuery();
                if (rs.next()) {
                    Customer customer = new Customer();
                    customer.setId(rs.getString("CustomerId"));
                    customer.setName(rs.getString("CustomerName"));
                    customer.setContactName(rs.getString("ContactName"));
                    customer.setAddress(rs.getString("Address"));
                    customer.setCity(rs.getString("City"));
                    customer.setCode(rs.getString("PostalCode"));
                    customer.setCountry(rs.getString("Country"));
                    model.addAttribute("customer", customer);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @GetMapping("sub11")
    public void sub11(String id, Model model) {
        String sql = """
                SELECT *
                FROM Employees
                WHERE EmployeeId = ?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt) {
                pstmt.setString(1, id);
                ResultSet rs = pstmt.executeQuery();
                Employee employee = new Employee();
                System.out.println(employee);
                if (rs.next()) {
                    employee.setId(rs.getString("EmployeeID"));
                    employee.setFname(rs.getString("FirstName"));
                    employee.setLname(rs.getString("LastName"));
                    employee.setBirth(rs.getString("BirthDate"));
                    employee.setPhoto(rs.getString("Photo"));
                    employee.setNotes(rs.getString("notes"));
                    model.addAttribute("employee", employee);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @PostMapping("sub12")
    public String sub12(Employee employee,
                        RedirectAttributes rttr) {
        String sql = """
                UPDATE Employees
                SET FirstName = ?, LastName = ?, BirthDate = ?, Photo = ?, Notes = ?
                WHERE EmployeeId = ?
                """;

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            try (con; pstmt) {
                pstmt.setString(1, employee.getFname());
                pstmt.setString(2, employee.getLname());
                pstmt.setString(3, employee.getBirth());
                pstmt.setString(4, employee.getPhoto());
                pstmt.setString(5, employee.getNotes());
                pstmt.setString(6, employee.getId());
                pstmt.executeUpdate();
                rttr.addFlashAttribute("message", "Update Complete");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        rttr.addAttribute("id", employee.getId());
        return "redirect:/main28/sub11";
    }
}
