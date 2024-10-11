<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: aqua">${message}</h5>
</c:if>
<h3>직원 조회 후 수정</h3>
<form action="">
    직원 번호
    <input type="number" name="id" value="${param.id}">
    <button>search</button>
</form>
<hr>
<c:if test="${empty employee}">
    <h5>조회 결과가 없습니다.</h5>
</c:if>
<c:if test="${not empty employee}">
    <form action="/main28/sub12" method="post">
        <div>
            <input type="number" name="id" value="${employee.id}">
        </div>
        <div>
            <input type="text" name="fname" value="${employee.fname}">
        </div>
        <div>
            <input type="text" name="lname" value="${employee.lname}">
        </div>
        <div>
            <input type="text" name="birth" value="${employee.birth}">
        </div>
        <div>
            <input type="text" name="photo" value="${employee.photo}">
        </div>
        <div style="text-align: left">
            <textarea name="notes" id="" cols="30" rows="10">${employee.notes}</textarea>
        </div>
        <div>
            <button>save</button>
        </div>
    </form>
</c:if>
</body>
</html>
