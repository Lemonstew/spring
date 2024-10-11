<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: black; color: red">${message}</h5>
</c:if>
<form action="">
    Product ID :
    <input type="text" value="${param.id}" name="id">
    <br>
    <button>search</button>
</form>
<hr>
<c:if test="${not empty product}">
    <div>
        <input type="text" readonly="" value="${product.id}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.name}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.categoryId}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.supplierId}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.unit}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.price}">
    </div>
    <div>
        <form action="/main28/sub8" method="post">
            <input type="hidden" name="id" value="${product.id}">
            <button style="background-color: darkred; color: white">DELETE</button>
        </form>
    </div>
</c:if>
<c:if test="${empty product}">
    <h5>there is not exist</h5>
</c:if>
</body>
</html>
