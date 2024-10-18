package com.example.spring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.util.List;

@Mapper
public interface Mapper06 {
    @Select("""
            SELECT CustomerName
            FROM Customers
            WHERE CustomerID = #{id}
            """)
    String select01(Integer id);

    @Select("""
            SELECT ProductName
            FROM Products
            WHERE ProductID = #{id}
            """)
    String select02(Integer id);

    @Select("""
            SELECT CustomerName
            FROM Customers
            WHERE Country IN (#{c1}, #{c2})
            ORDER BY CustomerName
            """)
    List<String> select03(String c1, String c2);

    @Select("""
            SELECT ProductName
            FROM Products
            WHERE Price >= #{price1} AND Price <= #{price2}
            ORDER BY ProductName
            """)
    List<String> select04(String price1, String price2);

    @Select("""
            SELECT LastName
            FROM Employees
            WHERE BirthDate >= #{birth} AND BirthDate <= #{date}
            ORDER BY BirthDate
            """)
    List<String> select05(String birth, String date);

//    @Select("""
//SELECT
//FROM
//""")
}
