<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        span:nth-child(odd),
        div:nth-child(odd) {
            background-color: burlywood;
        }

        span:nth-child(even),
        div:nth-child(even) {
            background-color: cornflowerblue;
        }
    </style>
</head>
<body>
<%-- 요소 배치 : inline(span, a) -> 가로배치 --%>
<span class="m-3 p-3">Lorem.</span>
<span class="m-3 p-3">Pariatur.</span>
<span class="m-3 p-3">A!</span>
<span class="m-3 p-3">At.</span>
<span class="m-3 p-3">Dolorum?</span>

<hr>

<%-- 요소 배치 : block(p, div, h1) ->세로배치 --%>
<div class="m-3 p-3">Lorem.</div>
<div class="m-3 p-3">Earum.</div>
<div class="m-3 p-3">Ut.</div>
<div class="m-3 p-3">Repellendus.</div>
<div class="m-3 p-3">Consectetur.</div>

<hr>
<%-- flexbox : 요소들을 한 줄로 배치 --%>

<%-- flexbox --%>
<div style="display: flex; background-color: yellow;"> <%-- flex container --%>
    <%--  flex items : 가장 높은 높이, 오른쪽(옆)에 배치--%>
    뉴클리엄 하고싶다 뉴클리엄
    <div>1</div>
    <div>2</div>
    <div>3</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>
</html>
