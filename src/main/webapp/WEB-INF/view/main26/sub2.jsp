<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>국가별 고객 조회</h3>
<form action="">
    <select name="" id="">
        <c:forEach items="${countryList}" var="country">
            <option value="${coutntry}"></option>
        </c:forEach>
    </select>
</form>
</body>
</html>
