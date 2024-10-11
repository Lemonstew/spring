<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h4 style="background-color: skyblue">${message}</h4>
</c:if>
<h3>new products registration</h3>
<form action="/main28/sub4" method="post">
    name :
    <input type="text" name="name">
    <br>
    price :
    <input type="text" name="price">
    <br>
    <button>register</button>
</form>
</body>
</html>
