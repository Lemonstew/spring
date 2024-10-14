<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>보드게임 구매리스트</h2>
<form action="/main29/sub8" method="post">
    <div>
        우선순위
        <input type="number" name="priority" step="1">
    </div>
    <div>
        게임명
        <input type="text" name="name">
    </div>
    <div>
        작가
        <input type="text" name="designer">
    </div>
    <div>
        긱 평점
        <input type="number" name="avg" step="0.01">
    </div>
    <div>
        긱 난이도
        <input type="number" name="weight" step="0.01">
    </div>
    <div>
        <button>등록</button>
    </div>
</form>
</body>
</html>
