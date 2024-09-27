<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${datas}" var="data">
    <div style="border: 1px solid black">
        <c:forEach items="${data}" var="entry">

        </c:forEach>
    </div>
</c:forEach>

<hr>

<c:forEach items="${players}" var="p"></c:forEach>
</body>
</html>
