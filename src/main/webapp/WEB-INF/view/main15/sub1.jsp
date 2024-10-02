<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        .navbar {
            display: flex;
            gap: 5px;
        }

        .nav-item {
            padding: 10px;
        }

        .nav-item:hover {
            background-color: darkgray;
            color: yellow;
        }
    </style>
    <title>Title</title>
</head>
<body>
<%-- forEach, if 등등 --%>
<div class="navbar">
    <div class="nav-item">증권 홈</div>
    <div class="nav-item">국내증시</div>
    <div class="nav-item">해외증시</div>
    <div class="nav-item">시장지표</div>
    <div class="nav-item">리서치</div>
    <div class="nav-item">AI 분석</div>
</div>

<hr>
<h1>SUB1.JSP 컨텐츠들</h1>
<h2>Lorem ipsum dolor sit amet.</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis corporis doloremque, enim eos ex fuga fugit in
    ipsum itaque libero, natus nemo nisi pariatur possimus quis, quisquam rerum ullam voluptas.</p>

</body>
</html>
