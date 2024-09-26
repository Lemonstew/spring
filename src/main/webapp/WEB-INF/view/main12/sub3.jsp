<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- el 에서 사용 가능한 연산자--%>
<%-- 산술연산자 +, -, *, /, % --%>
<p>${3 + 3}</p>
<p>${5 - 2}</p>
<p>${4 * 3}</p>
<p>${3 / 2}</p>
<p>${ 5 div 3}</p> <%-- 나눗셈 --%>
<p>${10 % 3}</p>
<p>${ 14 mod 5 }</p> <%-- 나머지 --%>
<p>${3 + "15"}</p>

<hr>
<p>${"3" + "3"}</p> <%-- 산술연산 결과 6 --%>
<%--<p>${"3"+ "one"}</p>--%> <%--이런거는 안됨--%>

<hr>

<p>${num1 - num2}</p> <%-- 11 --%>
<p>${num1 / num3}</p> <%-- 99 / 77 --%>

<hr>

<%-- 비교연산자 ==, !=, <=, <, >=, > --%>
<p>${ 5 == 5 }</p>
<p>${ 5 eq 5 }</p>

<p>${ 5 != 3}</p>
<p>${ 5 ne 3}</p>

<p>${ 3 < 5 }</p>
<p>${ 3 lt 5 }</p>

<p>${ 3 > 5 }</p>
<p>${ 3 gt 5 }</p>

<p>${ 7 <= 6 }</p>
<p>${ 7 le 6 }</p>

<p>${ 9 >= 10 }</p>
<p>${ 9 ge 10 }</p>

<hr>
<%-- 비교연산 시 주의 : 다른 타입끼리 연산 시 수로 변환 후 비교 --%>
<p>${"12" < "6"}</p> <%--true--%>
<p>${"ab" < "f"}</p> <%--true--%>
<p>${12 < 6}</p> <%--false--%>
<p>${12 < "6"}</p> <%--false--%>
<%--<p>${12 < "six"}</p>--%>

<hr>
<p>${true && true}</p> <%--true--%>
<p>${true and true}</p>

<p>${false || false}</p> <%--false--%>
<p>${false or false}</p>

<p>${! true}</p> <%-- false --%>
<p>${not true}</p>

<%-- empty --%>
<%-- "", 길이가 0인 컬렉션 (List, Set, Map), null 이면 true --%>

<p>${empty ""}</p> <%--true--%>
<p>${empty attr1}</p> <%--true--%>
<p>${empty attr2}</p> <%--true--%>
<p>${empty attr3}</p> <%--true--%>
<p>${empty attr4}</p> <%--true--%>
<p>${empty attr5}</p> <%--true--%>
<p>${empty attr6}</p> <%--true--%>

<%-- 컬렉션엔 사이즈 메소드가 있기에 아래와 같이도 이용 가능.--%>
<p>${attr2.size() == 0}</p>
<p>${attr3.size() == 0}</p>
<p>${attr4.size() == 0}</p>

<hr>


<p>${not empty ""}</p> <%--true--%>
<p>${not empty attr1}</p> <%--true--%>
<p>${not empty attr2}</p> <%--true--%>
<p>${not empty attr3}</p> <%--true--%>
<p>${not empty attr4}</p> <%--true--%>
<p>${not empty attr5}</p> <%--true--%>
<p>${not empty attr6}</p> <%--true--%>


<p>${attr2.size() > 0}</p>
<p>${attr3.size() > 0}</p>
<p>${attr4.size() > 0}</p>

<hr>

<%-- 삼항연산자 ㅁ?ㅇ:ㅅ --%>
<p>${true ? "hello":"world"}</p>
<p>${false ? "hello":"world"}</p>

</body>
</html>
