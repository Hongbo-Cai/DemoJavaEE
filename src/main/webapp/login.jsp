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
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>