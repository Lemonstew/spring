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
        <th>id</th>
        <th>first</th>
        <th>last</th>
        <th>birth</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employeeList}" var="list">
        <tr>
            <td>${list.id}</td>
            <td>${list.f}</td>
            <td>${list.l}</td>
            <td>${list.b}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
