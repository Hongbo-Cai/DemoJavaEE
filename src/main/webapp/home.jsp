<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-08-02
  Time: 10:14
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
<%=session.getId()%><br>
<%=session.getAttribute("email")%><br>
<a href="another.jsp">go to another page...</a><br>
<a href="logout.jsp">LOG OUT</a>
</body>
</html>
