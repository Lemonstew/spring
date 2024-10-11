<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: skyblue">${message}</h5>
</c:if>
<h3>search customer</h3>
<form action="">
    <input value="${param.id}" type="number" placeholder="customer id" name="id">
    <button>search</button>
</form>
<hr>
<c:if test="${not empty customer}">
    <div>
        <input type="text" readonly="" value="${customer.id}">
    </div>
    <div>
        <input type="text" readonly="" value="${customer.name}">
    </div>
    <div>
        <input type="text" readonly="" value="${customer.contactName}">
    </div>
    <div>
        <input type="text" readonly="" value="${customer.address}">
    </div>
    <div>
        <input type="text" readonly="" value="${customer.code}">
    </div>
    <div>
        <input type="text" readonly="" value="${customer.city}">
    </div>
    <div>
        <input type="text" readonly="" value="${customer.country}">
    </div>
    <div>
        <form action="/main28/sub6" method="post">
            <input type="hidden" name="id" value="${customer.id}">
            <button style="background-color: darkred; color: white">삭제</button>
        </form>
    </div>
</c:if>
<c:if test="${empty customer}">
    <h3>there is not exist</h3>
</c:if>
</body>
</html>
