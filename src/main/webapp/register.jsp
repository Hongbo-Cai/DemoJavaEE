<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        new Driver();
        String sql = "INSERT INTO db_test.user VALUES(NULL, ?, ?)";
        try (Connection connection = DriverManager.getConnection("jdbc:mysql:///db_test", "root", "system");
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            preparedStatement.executeUpdate();
        }

        response.sendRedirect("index.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>