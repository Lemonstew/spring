<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>기간별 주문 조회</h3>
<form action="">
    시작일
    <input type="date" name="begin">
    <br>
    ~
    <br>
    종료일
    <input type="date" name="end">
    <button>Search</button>
</form>
<table>
    <thead>
    <tr>
        <th>주문번호</th>
        <th>구매자번호</th>
        <th>배송원번호</th>
        <th>구입날짜</th>
        <th>운송장번호</th>
    </tr>
    </thead>
    <tbody><c:forEach items="${orderList}" var="o">
        <tr>
            <td>${o.orderId}</td>
            <td>${o.customerId}</td>
            <td>${o.employeeId}</td>
            <td>${o.orderDate}</td>
            <td>${o.shipperId}</td>
        </tr>
    </c:forEach></tbody>
</table>
</body>
</html>
