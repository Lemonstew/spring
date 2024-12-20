package com.example.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Controller
@RequestMapping("main29")
public class Controller29 {
    @Autowired
    DataSource dataSource;

    @RequestMapping("sub1")
    public void sub1() throws SQLException {
        String sql = """
                INSERT INTO test_table.my_table15
                (col1, col2, col3, col4, col5)
                VALUES
                (?, ?, ?, ?, ?)
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        try (conn; ps) {
            ps.setString(1, "some data");
            ps.setInt(2, 5678);
            ps.setDouble(3, 12345.67);
            ps.setDate(4, Date.valueOf("2024-10-14"));
            ps.setTimestamp(5, Timestamp.valueOf("2024-10-15 11:18:50"));
            ps.executeUpdate();
        }
    }

    @RequestMapping("sub2")
    public void sub2() throws SQLException {
        String sql = """
                SELECT *
                FROM test_table.my_table15
                LIMIT 1
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        try (conn; ps) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String col1 = rs.getString("col1"); // col1
                Integer col2 = rs.getInt("col2");
                Double col3 = rs.getDouble("col3");
                Date col4 = rs.getDate("col4");
                Timestamp col5 = rs.getTimestamp("col5");
                LocalDate col41 = rs.getDate("col4").toLocalDate();
                LocalDateTime col51 = rs.getTimestamp("col5").toLocalDateTime();
                System.out.println("col1 = " + col1);
                System.out.println("col2 = " + col2);
                System.out.println("col3 = " + col3);
                System.out.println("col4 = " + col4);
                System.out.println("col5 = " + col5);
                System.out.println("col41 = " + col41);
                System.out.println("col51 = " + col51);
            }

        }
    }

    @GetMapping("sub3")
    public void sub3() throws SQLException {

    }

    @PostMapping("sub4")
    public void sub4(String val1,
                     Integer val2,
                     Double val3,
                     LocalDate val4,
                     LocalDateTime val5) throws SQLException {
        String sql = """
                INSERT INTO test_table.my_table15
                (col1, col2, col3, col4, col5)
                VALUES
                (?, ?, ?, ?, ?)
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        try (conn; ps) {
            ps.setString(1, val1);
            ps.setInt(2, val2);
            ps.setDouble(3, val3);
            ps.setDate(4, Date.valueOf(val4));
            ps.setTimestamp(5, Timestamp.valueOf(val5));
            ps.executeUpdate();
        }
    }

    @GetMapping("sub5")
    public void sub5() throws SQLException {

    }


    @PostMapping("sub6")
    public String sub6(String title,
                       Integer price,
                       Double score,
                       LocalDate published,
                       LocalDateTime inserted) throws Exception {
        String sql = """
                INSERT INTO test_table.my_table16
                (title, price, score, published, inserted)
                VALUES
                (?, ?, ?, ?, ?)
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        try (conn; ps) {
            ps.setString(1, title);
            ps.setInt(2, price);
            ps.setDouble(3, score);
            ps.setDate(4, Date.valueOf(published));
            ps.setTimestamp(5, Timestamp.valueOf(inserted));
            ps.executeUpdate();
        }
        return "redirect:/main29/sub5";
    }

    @GetMapping("sub7")
    public void sub7() {

    }

    @PostMapping("sub8")
    public String sub8(Integer priority,
                       String name,
                       String designer,
                       Double avg,
                       Double weight) throws Exception { // 클래스를 만들어 소괄호 안에 클래스를 채워넣을 수 있음
        String sql = """
                INSERT INTO board3game.wish_list
                (Priority, Name, Designer, AVGRaiting, GeekWeight)
                VALUES
                (?, ?, ?, ?, ?)
                """;
        Connection con = dataSource.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        try (con; ps) {
            ps.setInt(1, priority);
            ps.setString(2, name);
            ps.setString(3, designer);
            ps.setDouble(4, avg);
            ps.setDouble(5, weight);
            ps.executeUpdate();
        }
        return "redirect:/main29/sub7";
    }
}
