<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    out.print(email + "<br>" + password);
%>