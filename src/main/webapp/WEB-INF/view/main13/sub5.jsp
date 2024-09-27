<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- forEach : 반복 --%>

<c:forEach begin="1" end="3">
    <p>repeat contents</p>
</c:forEach>

<c:forEach begin="1" end="5" var="idx">
    <p>${idx} 번</p>
</c:forEach>

<c:forEach begin="11" end="15" var="arnak">
    <p>${arnak}</p>
</c:forEach>

<c:forEach begin="1" end="9" var="dune">
    <p>${dune*5}</p>
</c:forEach>

<%--
request parameter 'dan'
?dan=5 : 5 단 출력
?dan=7 : 7 단 출력
--%>

<hr>
<hr>

<c:if test="${param.dan==5}">
    <c:forEach begin="1" end="9" var="i">
        <p>${i*5}</p>
    </c:forEach>
</c:if>

<c:if test="${param.dan==7}">
    <c:forEach begin="1" end="9" var="i">
        <p>${i*7}</p>
    </c:forEach>
</c:if>
<hr>
<hr>
<c:forEach begin="1" end="9" var="i">
    <p>${param.dan} X ${i} = ${param.dan * i}</p>
</c:forEach>

<hr>
<%-- forEach를 활용하여 2단~9단까지 출력 --%>
<c:forEach begin="2" end="9" var="i">
    <c:forEach begin="1" end="9" var="j">
        <p>${i} X ${j} = ${i*j}</p>
    </c:forEach>
</c:forEach>

</body>
</html>
