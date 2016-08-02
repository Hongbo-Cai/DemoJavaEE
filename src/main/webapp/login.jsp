<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        new Driver();
        Connection connection = DriverManager.getConnection("jdbc:mysql:///db_test", "root", "system");
        String sql = "SELECT * FROM db_test.user WHERE email = ? AND password = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, password);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            session.setAttribute("email", email);
            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("message", "invalid email or password.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>