<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>주문날짜(최신순)</h3>
<hr>
<table>
    <thead>
    <tr>
        <th>주문번호</th>
        <th>구매자 번호</th>
        <th>배송원 번호</th>
        <th>주문날짜</th>
        <th>운송장번호</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orderList}" var="o">
        <tr>
            <td>${o.orderId}</td>
            <td>${o.customerId}</td>
            <td>${o.employeeId}</td>
            <td>${o.orderDate}</td>
            <td>${o.shipperId}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div style="margin: 10px">
    <c:forEach begin="1" end="${lastPageNumber}" var="pageNumber">
        <c:url value="/main27/sub6" var="pageLink">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>
        <a href="${pageLink}">${pageNumber}</a>
    </c:forEach>
    <c:url value="/main27/sub6"></c:url>
</div>
</body>
</html>
