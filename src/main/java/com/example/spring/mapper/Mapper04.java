package com.example.spring.mapper;

import com.example.spring.dto.c34.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Mapper
public interface Mapper04 {

    @Select("""
            SELECT ProductName p_name
            FROM Products
            WHERE ProductID = 1
            """)
    String getProductName();

    @Select("""
            SELECT ProductName p_name
            FROM Products
            WHERE ProductID = 1
            """)
//    @Insert()
//    @Delete()
//    @Update()
    String select2();

    @Select("""
            SELECT Price
            FROM Products
            WHERE ProductID = 1
            """)
    String select3();

    Double select4();

    @Select("""
            SELECT LastName
            FROM Employees
            WHERE EmployeeID = 1
            """)
    String select5();

    @Select("""
            SELECT CategoryID
            FROM Categories
            WHERE ProductID = 2
            """)
    Integer select6();

    @Select("""
            SELECT BirthDate
            FROM Employees
            WHERE EmployeeID = 2
            """)
    LocalDate select7();

    @Select("""
            SELECT DISTINCT Country
            FROM Customers
            """)
    List<String> select8();

    @Select("""
            SELECT LastName
            FROM Employees
            """)
    List<String> select9();

    @Select("""
            SELECT BirthDate
            FROM Employees
            """)
    List<LocalDate> select10();

    @Select("""
            SELECT Price
            FROM Products
            ORDER BY Price DESC
            LIMIT 5
            """)
    List<Double> select11();

    @Select("""
            SELECT CustomerName, City, Country
            FROM Customers
            WHERE CustomerID = 1
            """)
    Map<String, String> select12();

    @Select("""
            SELECT CustomerName 이름, City 도시, Country 국가
            FROM Customers
            WHERE CustomerID = 1
            """)
    Map<String, String> select13();

    @Select("""
            SELECT ProductName p_name, Price, CategoryID
            FROM Products
            WHERE ProductID = 1
            """)
    Map<String, Object> select14();

    @Select("""
            SELECT CustomerName name, Address address, PostalCode post
            FROM Customers
            WHERE CustomerID = 3
            """)
    Customer select17();

    @Select("""
            SELECT ProductID id, ProductName p_name, Price price
            FROM Products
            WHERE ProductID = 1
            """)
    Product select18();

    @Select("""
            SELECT CONCAT(FirstName, ' ', LastName) name, BirthDate birth
            FROM Employees
            WHERE EmployeeID = 3
            """)
    Employee select19();

    @Select("""
            SELECT SupplierID id , SupplierName name, Phone phone
            FROM Suppliers
            WHERE SupplierID = 2
            """)
    Supplier select20();

    @Select("""
            SELECT o.OrderDate date, c.CustomerName name
            From Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
            WHERE o.OrderID = 10248
            """)
    Map<Order, Customer> select21();

    @Select("""
            SELECT p.ProductName p_name, c.CategoryName c_name, p.Unit unit, p.Price price
            FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID 
            ORDER BY p.Price DESC
            LIMIT 5
            """)
    List<Map<Product, Category>> select23();

    @Select("""
            SELECT p.ProductName p_name, p.Price price
            FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
            JOIN Suppliers s ON s.ContactName = c.ContactName
            JOIN Products p ON p.SupplierID = s.SupplierID
            WHERE o.OrderID = 10248
            """)
    List<Map<String, Object>> select24();

//    @Select("""
//SELECT (FirstName, ' ', LastName) name, BirthDate birth
//FROM
//""")
}
