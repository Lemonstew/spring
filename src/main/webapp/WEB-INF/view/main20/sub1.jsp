<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- method : 전송 방식 (기본값 get)--%>
<%-- get 방식 : 주소에 쿼리스트링으로 붙음
               주소란에 노출되고, 길이의 제한이 있음
               --%>

<%-- post 방식 : 요청 메시지 본문(body)에 붙음
                주소란에 노출되지 않고, 길이의 제한이 없음
                --%>
<form action="/main20/sub2" method="post">
    <input type="text" name="name">
    <br>
    <input type="password" name="pw">
    <br>
    <textarea name="note" id="" cols="30" rows="10">
    long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...long text...
  </textarea>
    <button>전송</button>
</form>
<hr>
<form action="/main20/sub3" method="post">
    <select name="sel" id="">
        <option value="val1">val1</option>
        <option value="val2">val2</option>
        <option value="val3">val3</option>
    </select>
    <br>
    <input type="date" name="birth" id="">
    <br>
    <input type="number" name="age" value="30">
    <br>
    <button>전송</button>
</form>
</body>
</html>
