<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>/main19/sub1.jsp</h3>
<form action="/main19/sub1">
    <input type="text" name="address" value="서울">
    <br>
    <input type="text" name="nick" value="수도">
    <%-- submit(제출) 버튼 --%>
    <%-- submit 버튼 클릭 시
         : action 속성(attribute)에 명시된 위치로
           method 속성(attribute) 방식으로
           form 요소들의 name=value 쌍이 전달됨 --%>
    <button>제출</button>
</form>
<hr>
<%-- /main19/sub2?name=흥민&age=44 --%>
<form action="/main19/sub2">
    <input type="text" name="name" value="흥민">
    <br>
    <input type="text" name="age" value="44">
    <br>
    <button>전송</button>
</form>
<hr>
<hr>
<form action="/main19/sub3">
    <input type="text" name="food" value="pizza">
    <br>
    <input type="text" name="email" value="gmail">
    <br>
    <input type="text" name="city" value="incheon">
    <button>submit</button>
</form>
<hr>
<form action="/main19/sub4">
    <input type="text" name="name" value="son">
    <br>
    <select name="food" id="">
        <option value="pizza">val1</option>
        <option value="coffee">val2</option>
        <option value="burger">val3</option>
    </select>
    <br>
    <textarea name="memo" id="" cols="30" rows="10">Lorem ipsum dolor.</textarea>
    <br>
    <button>전송</button>
</form>
<hr>
<form action="/main19/sub5">
    <input type="checkbox" name="city" id="" value="seoul">
    Lorem.
    <br>
    <input type="checkbox" name="city" id="" value="busan">
    Numquam!
    <br>
    <input type="checkbox" name="city" id="" value="jeju">
    Aperiam?
    <br>
    <button>button for submit</button>
</form>
<hr>
<form action="/main19/sub6">
    <input type="checkbox" name="accept" value="yes">
    동의
    <br>
    <button>전송</button>
</form>
<hr>
<form action="/main19/sub7">
    <input type="radio" name="location" id="" value="gangnam">
    Lorem.
    <br>
    <input type="radio" name="location" id="" value="sinchon">
    Eligendi?
    <br>
    <input type="radio" name="location" id="" value="hongdae">
    Tempora.
    <br>
    <button>전송하기</button>
</form>
<hr>
<form action="/main19/sub8">
    <input type="date" name="birth">
    <br>
    <input type="datetime-local" name="now">
    <br>
    <input type="hidden" name="some" value="some value">
    <br>
    <button>submit</button>
</form>
<hr>
<%--
Controller19.sub10 메소드 작성해서
전송된 요청 파라미터들을 메소드 argument로 받아서 출력하는 코드 작성
--%>
<form action="/main19/sub10">
    <%--  input[name value]+br--%>
    <%--  (input:c[name=foods]+br)*3--%>
    <%--  (input:r[name=choice]+br)*3--%>
    <%--  input:date[name=birthDate]+br--%>
    <%--  input[type=datetime-local][name=startDateTime]+br--%>
    <%--  (select[name]>option[value=some$]*3^br)--%>
    <%--  textarea[name]>lorem3^br--%>
    <%--  button{전송}--%>
    <input type="text" name="address" value="서울">
    <br>
    <input type="checkbox" name="foods" id="" value="coffee">
    커피
    <br>
    <input type="checkbox" name="foods" id="" value="water">
    물
    <br>
    <input type="checkbox" name="foods" id="" value="tea">
    차
    <br>
    <input type="radio" name="choice" id="sel1">
    1번
    <br>
    <input type="radio" name="choice" id="sel2">
    2번
    <br>
    <input type="radio" name="choice" id="sel3">
    3번
    <br>
    <input type="date" name="birthDate" id="">
    <br>
    <input type="datetime-local" name="startDateTime">
    <br>
    <select name="select" id="">
        <option value="some1">선택1</option>
        <option value="some2">선택2</option>
        <option value="some3">선택3</option>
    </select>
    <br>
    <textarea name="note" id="" cols="30" rows="10">Lorem ipsum dolor.</textarea>
    <br>
    <button>전송</button>
</form>
</body>
</html>