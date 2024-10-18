package com.example.spring.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface Mapper07 {
    @Select("""
            SELECT *
            FROM Customers
            """)
    List<Map<String, Object>> select1();

    @Delete("""
            DELETE FROM Custmoers
            WHERE CustomerId = #{id}
            """)
    int delete1(Integer id);

    @Delete("""
            DELETE FROM Products
            WHERE ProductId = #{id}
            """)
    int delete2(Integer id);

//    @Insert("""
//INSERT INTO Customers
//(CustomerName, City, Country)
//""")

    @Insert("""
            INSERT INTO Products
            (ProductName, Unit, Price)
            VAlUES (#{name}, #{unit}, #{price})
            """)
    int insert2(String name, String unit, double price);

    @Select("""
            SELECT *
            FROM Products
            """)
    List<Map<String, Object>> select2();
}
