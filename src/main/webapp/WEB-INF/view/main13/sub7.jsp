<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${people}" var="person">
    <p>${person.key} : ${person.value}</p>
</c:forEach>
<hr>
<c:forEach items="${players}" var="player">
    <div style="margin: 30px">
        <p>이름 : ${player.key}</p>
        <p>소속 : ${player.value}</p>
        <hr>
    </div>
</c:forEach>
<hr>
<c:forEach items="${food}" var="f">
    <div style="margin: 20px">
        <p>이름 : ${f.key}</p>
        <p>브랜드 : ${f.value}</p>
    </div>
</c:forEach>

</body>
</html>
