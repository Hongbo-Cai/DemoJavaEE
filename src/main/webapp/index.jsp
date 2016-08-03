<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-08-03
  Time: 09:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>index</h1>
<form action="login.jsp" method="post">
    <input type="text" name="email" placeholder="EMAIL"><br>
    <input type="password" name="password" placeholder="PASSWORD"><br>
    <input type="submit" value="LOGIN">
</form>
<%
    String message = (String) request.getAttribute("message");
    if (message != null) {
        out.print(message);
    }
%>
<hr>
<a href="signup.jsp">SIGN UP</a>
</body>
</html>
