<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>이름: ${actor.name}</p>
<p>소속사: ${actor.agency}</p>
<p>생일: ${actor.birth}</p>
<p>MBTI: ${actor.mbti}</p>
<p>
    작품
<ul>
    <c:forEach items="${actor.works}" var="work">
        <li>${work}</li>
    </c:forEach>
</ul>
</p>

<hr>
<hr>

<table>
    <thead style="border: 1px solid black; border-radius: 15px">
    <div style="margin: 15px">
        <tr>
            <th>이름</th>
            <th>소속사</th>
            <th>mbti</th>
            <th>생일</th>
            <th>작품목록</th>
        </tr>
    </div>
    </thead>
    <c:forEach items="${actorList}" var="a">
        <tbody style="border: 1px solid black; border-radius: 15px">
        <tr>
            <td>${a.name}</td>
            <td>${a.agency}</td>
            <td>${a.mbti}</td>
            <td>${a.birth}</td>
            <td>
                <ul>
                    <li>${a.works}</li>
                </ul>
            </td>
        </tr>
        </tbody>
    </c:forEach>
</table>
</body>
</html>
