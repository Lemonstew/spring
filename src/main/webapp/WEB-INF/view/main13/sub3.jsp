<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- jstl choose tag --%>

<c:choose>
    <c:when test="${param.country == 'korea republic'}">
        <p>son</p>
    </c:when>
    <c:when test="${param.country == 'argentina'}">
        <p>messi</p>
    </c:when>
    <c:when test="${param.country == 'brazil'}">
        <p>neymar</p>
    </c:when>
    <c:when test="${param.country == 'united_kingdom'}">
        <p>kane</p>
    </c:when>
    <c:when test="${not empty param.country}">
        <p>you can not choose that country</p>
    </c:when>
    <c:otherwise>
        <p>choose your country</p>
    </c:otherwise>
</c:choose>

<hr>
<%--
요청 파라미터 age 를 받아서
0 <= age <= 13 이면 '어린이 영화'
14 < age <= 19 이면 '청소년 영화'
20 <= age 이면 '성인 영화'

age 가 없으면 '나이를 입력해주세요'
age < 0 이면 '유효한 나이를 입력해주세요'
--%>
<c:choose>
    <c:when test="${param.age <= 13 && param.age >= 0}">
        <p>for kids</p>
    </c:when>
    <c:when test="${14<param.age && param.age<=19}">
        <p>for teens</p>
    </c:when>
    <c:when test="${20<=param.age}">
        <p>for adults</p>
    </c:when>
    <c:when test="${param.age<0}">
        <p>wrong age</p>
    </c:when>
    <c:otherwise>
        <p>tell your age</p>
    </c:otherwise>

</c:choose>

<c:choose>
    <c:when test="${co_op}">
        <p>Sky team</p>
    </c:when>
    <c:when test="${strategy}">
        <p>Nucleum</p>
    </c:when>
    <c:when test="${duel}">
        <p>Lord of the rings:Duel for Middle-Earth</p>
    </c:when>
    <c:when test="${thematic}">
        <p>Dune:Uprising</p>
    </c:when>
</c:choose>


</body>
</html>
