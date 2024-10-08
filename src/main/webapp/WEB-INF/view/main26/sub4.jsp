<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>상품명 조회</h3>
<form action="">
    <input type="text" placeholder="조회할 상품명" name="keyword">
    <button>조회</button>
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>상품번호</th>
        <th>상품명</th>
        <th>공급번호</th>
        <th>카테고리 번호</th>
        <th>수량</th>
        <th>가격</th>
    </tr>
    </thead>
    <tbody><c:forEach items="${productList}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.supplierId}</td>
            <td>${p.categoryId}</td>
            <td>${p.unit}</td>
            <td>${p.price}</td>
        </tr>
    </c:forEach></tbody>
</table>
</body>
</html>
