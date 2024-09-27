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
        <th>제목</th>
        <th>저자</th>
        <th>출판사</th>
        <th>페이지</th>
        <th>가격</th>
    </tr>
    </thead>
    <c:forEach items="${list}" var="book">
    <tbody>
    <tr>
        <td>${book.title}</td>
        <td>${book.author}</td>
        <td>${book.publisher}</td>
        <td>${book.pages}</td>
        <td>${book.price}</td>
    </tr>
    </c:forEach>
    </tbody>
</table>

<hr>
<table>
    <thead>
    <tr>
        <th>이름</th>
        <th>키</th>
        <th>몸무게</th>
        <th>생일</th>
        <th>팀</th>
        <th>포지션</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${members}" var="m">
    <tr>
        <td>${m.name}</td>
        <td>${m.height}</td>
        <td>${m.weight}</td>
        <td>${m.birth}</td>
        <td>${m.team}</td>
        <td>${m.position}</td>
    </tr>
    </tbody>
    </c:forEach>
</table>
</body>
</html>
