<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>/main13/sub1.jsp</p>
<p>${attr1}</p>
<%-- EL implicit objects --%>
<%-- 총 11개 (아래 사이트 참고) --%>
<%-- https://www.javatpoint.com/EL-expression-in-jsp --%>

<%-- * param, paramValues, pageScope, requestScope, * sessionScope, appicationScope --%>

<%--
param : request parameter ( ex ) ?param=value&name=son&age=3 ) 를 map 으로 담은 객체
--%>

<%--?name=흥민&age=33--%>
<p>${param.name}</p>
<p>${param.age}</p>

<%--?address=seoul&city=jeju--%>
<p>${param["address"]}</p>
<p>${param.city}</p>

<%-- 쿼리스트링 작성하고 요청 보내기 --%>
<p>${param.email}</p>
<p>${param.hobby}</p>
<p>${param.score}</p>
<p>${param.location}</p>
<%-- http://localhost:8080/main13/sub1?email=gmail&hobby=boardgame&score=winner&location=seoul --%>

<h5>paramValues</h5>

<%--
paramValues : request parameter 의 값들을 배열로 map에 넣은 객체
--%>

<%-- ?email=gmail&city=seoul --%>

<%-- param 의 경우와 paramValues의 비교 --%>
<p>${param.email}</p>
<p>${paramValues.email[0]}</p>
<p>${param.city}</p>
<p>${paramValues.city[0]}</p>

<%-- ?hobby=soccer&hobby=baseball&hobby=basketball&score=9.9&score=8.8 --%>
<%-- 이 때 param을 쓰면 첫 번째 것만 나옴--%>
<p>${paramValues.hobby[0]}</p>
<p>${paramValues.hobby[1]}</p>
<p>${paramValues.hobby[2]}</p>
<p>${paramValues.score[0]}</p>
<p>${paramValues.score[1]}</p>

<p>${paramValues.player[0]}</p>
<p>${paramValues.player[1]}</p>
<p>${paramValues.player[2]}</p>
<p>${paramValues.team[0]}</p>
<p>${paramValues.team[1]}</p>


</body>
</html>
