<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-08-02
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>another page</title>
</head>
<body>
<h1>another</h1>
<%=session.getId()%>
<%=session.getAttribute("email")%>
</body>
</html>
