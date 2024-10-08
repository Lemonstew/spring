<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>가격으로 상품 검색</h3>
<form action="">
    <input type="number" value="${param.keyword1}" step="0.01" placeholder="부터" name="keyword1">
    <input type="number" value="${param.keyword2}" step="0.01" placeholder="까지" name="keyword2">
    <br>
    <button>검색</button>
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
