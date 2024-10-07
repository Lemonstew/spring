<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>상품번호</th>
        <th>상품명</th>
        <th>단위</th>
        <th>가격</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="l">
        <tr>
            <td>${l.productID}</td>
            <td>${l.productName}</td>
            <td>${l.unit}</td>
            <td>${l.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
