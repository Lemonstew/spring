<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>상품명</h1>
<ul>
    <c:forEach items="${nameList}" var="list">
        <li>${list}</li>
    </c:forEach>
</ul>

</body>
</html>
