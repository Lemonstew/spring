<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>sub7 contents</h1>
<p>1</p>
<c:import url="/WEB-INF/view/main15/sub8.jsp" var="sub8Contents"/> <%-- url을 var에다가 집어넣기만 한 상태.
 그렇기에 해당 위치를 지금 불러낸 것은 아님 --%>
<hr>
<p>2</p>
<c:import url="/WEB-INF/view/main15/sub8.jsp"/>
<hr>
<p>3</p>
<c:import url="/WEB-INF/view/main15/sub8.jsp"/>
<hr>
<p>4</p>
${sub8Contents}
<hr>
<p>5</p>
${sub8Contents}


</body>
</html>