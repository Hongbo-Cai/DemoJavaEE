<%
    String username = request.getParameter("username");
    String[] hobbies = request.getParameterValues("hobbies");
    String[] cities = request.getParameterValues("cities");
    out.println(username + "<hr>");
    for (String hobby : hobbies) {
        out.println(hobby + "<br>");
    }
    out.println("<hr>");
    for (String city : cities) {
        out.println(city + "<br>");
    }

%>