<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>국가별 고객 조회</h3>
<form action="">
    국가명
    <input type="text" name="country" value="">
    <br>
    <button>검색</button>
</form>

<hr>
<c:if test="${not empty nameList}">
    <ul>
        <c:forEach items="${nameList}" var="name">
            <li>${name}</li>
        </c:forEach>
    </ul>
</c:if>
<c:if test="${empty nameList}">
    <strong>해당 국가엔 고객이 없습니다.</strong>
</c:if>
</body>
</html>
