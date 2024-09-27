<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>/main13/sub2</p>
<%--
JSTL : JSP Standard Tag Library

반복된 코드 실행
출력 여부
--%>
<forEach></forEach>
<if></if>

<%--
if
--%>
<c:if test="true">
    <p>출력이 될까요</p>
</c:if>

<c:if test="false">
    <p>이건 될까요리</p>
</c:if>

<c:if test="${param.g == 'male'}">
    <p>male</p>
</c:if>
<c:if test="${param.g == 'female'}">
    <p>female</p>
</c:if>

<c:if test="${param.age <13}">
    <p>어린이용 컨텐츠</p>
</c:if>
<c:if test="${13 <= param.age && param.age < 20}">
    <p>청소년용 컨텐츠</p>
</c:if>

<c:if test="${param.age >=20}">
    <p>성인용 컨텐츠</p>
</c:if>

<hr>

<%-- request parameter 'country'의 값에 따라 다른 요소 출력 --%>
<%--
country 가 uk 이면 kane
country 가 kr 이면 son
country 가 ag 이면 messi
country 가 br 이면 neymar
country 가 fr 이면 zidane
--%>

<c:if test="${param.country=='uk'}">
    <p>kane</p>
</c:if>
<c:if test="${param.country=='kr'}">
    <p>son</p>
</c:if>
<c:if test="${param.country=='ag'}">
    <p>messi</p>
</c:if>
<c:if test="${param.country=='br'}">
    <p>neymar</p>
</c:if>
<c:if test="${param.country=='fr'}">
    <p>zidane</p>
</c:if>


</body>
</html>
