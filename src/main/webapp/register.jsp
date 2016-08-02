<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        new Driver();
        Connection connection = DriverManager.getConnection("jdbc:mysql:///db_test", "root", "system");
        String sql = "INSERT INTO db_test.user VALUES(NULL, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, password);
        preparedStatement.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    request.getRequestDispatcher("index.jsp").forward(request, response); // forward 跳转
%>