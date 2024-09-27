<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${data}" var="entry">
    <p>${entry.key}</p>
    <ul>
        <c:forEach items="${entry.value}" var="item">
            <li>${item}</li>
        </c:forEach>
    </ul>
</c:forEach>

<hr>

<c:forEach items="${movies}" var="m">
    <p>${m.key}</p>
    <ul>
        <c:forEach items="${m.value}" var="v">
            <li>${v}</li>
        </c:forEach>
    </ul>
</c:forEach>
</body>
</html>
