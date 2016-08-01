<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" %>
<!--这是一个典型的JSP，它包含了JSP中常用的元素-->
<%!
    String getDate() {
        Date date = new Date();
        return date.toString();
    }
    int count = 10;

    void method() {

    }
//    for (int i = 0; i < 10; i++) {}


%>
<html>
<head>
    <meta charset="utf-8">
    <title>一个典型的JSP</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<%--<%@ include file="header.jsp"%>--%>
<pre>
    JSP:
    1. 注释
    2. 模板元素
    3. 指令 <%-- <%@ --%>
        1. page
        2. include
        3. taglib (JSTL)
    4. 脚本元素
        1. 声明 <%-- <%! --%>
        2. 小脚本 <%-- <% --%>
        3. 表达式 <%-- <%= --%>
    5. JSP 动作元素
</pre>
<div style="text-align: center">
    <table style="margin: 0 auto">
        <tr style="background: #777;">
            <th>----------------</th>
        </tr>
        <%
            // color
            String c1 = "#9cf", c2 = "#8c3";
            for (int i = 0; i < count; i++) {
                String color;
                if (i % 2 == 0) {
                    color = c1;
                } else {
                    color = c2;
                }
                out.println("<tr style=\"background:" + color + ";\"><td>----------------</td></tr>");
            }

//            out
//            request
//            response
//            page
//            pageContext
//            config
//            application
//            session
//            exception

            for (int i = 0; i < 10; i++) {}

//            void m() {}
        %>
    </table>
    <hr>
    用户的IP是：
    <%-- JSP隐藏注释：下面是使用表达式的例子 --%>
    <%=request.getRemoteAddr()%>
</div>
</body>
</html>