<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Republic of Korea</h1>
<p>${hCar.price}</p>
<p>${hCar.company}</p>
<p>${hCar.model}</p>
<hr>
<h1>USA</h1>
<p>${tCar.model}</p>
<p>${tCar["company"]}</p>
<p>${tCar.getPrice()}</p>
</body>
</html>
