<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-08-02
  Time: 08:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login page</title>
</head>
<body>
<h1>login</h1>
<form action="login.jsp" method="post">
    <input type="text" name="email" placeholder="EMAIL"><br>
    <input type="password" name="password" placeholder="PASSWORD"><br>
    <input type="submit" value="LOGIN">
</form>
<%
    String message = (String) request.getAttribute("message");
    out.print(message!=null?message:"");
%>
<hr>
<a href="signup.jsp">SIGN UP</a>
<hr>
<%=request.getRemoteAddr()%>
</body>
</html>
