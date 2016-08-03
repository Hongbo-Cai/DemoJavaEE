<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-08-03
  Time: 09:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>home page</title>
</head>
<body>
<%
    if (session.getAttribute("email") == null) {
        response.sendRedirect("index.jsp");
    }
%>
<h1>home</h1>
<%=session.getAttribute("email")%>
<hr>
<a href="logout.jsp">LOG OUT</a>
</body>
</html>
