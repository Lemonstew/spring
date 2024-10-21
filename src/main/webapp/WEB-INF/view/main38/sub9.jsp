<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 정보 수정</h3>
<form action="">
    직원 번호
    <input type="number" name="id" value="${param.id}">
    <button>search</button>
</form>
<c:if test="${empty employee}">
    <h5>직원 정보를 입력하세요</h5>
</c:if>
<c:if test="${not empty employee}">
    <form action="/main38/sub10" method="post">
        <div>
            <input type="text" name="firstName" value="${employee.firstName}">
        </div>
        <div>
            <input type="text" name="lastName" value="${employee.lastName}">
        </div>
        <div>
            <input type="text" name="birthDate" value="${employee.birthDate}">
        </div>
        <div>
            <input type="text" name="photo" value="${empoyee.photo}">
        </div>
        <div>
            <input textarea name="notes" value="${employee.notes}">
        </div>

    </form>
</c:if>
</body>
</html>