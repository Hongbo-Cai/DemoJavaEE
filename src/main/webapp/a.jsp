<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page a</title>
</head>
<body>
<h1>page a</h1>
<form action="b.jsp">
    <input type="text" name="username" placeholder="USERNAME"><br>
    <input type="checkbox" name="hobbies" value="Music1">Music1
    <input type="checkbox" name="hobbies" value="Music2">Music2
    <input type="checkbox" name="hobbies" value="Music3">Music3
    <input type="checkbox" name="hobbies" value="Music4">Music4
    <input type="checkbox" name="hobbies" value="Music5">Music5
    <br>
    <select name="cities" multiple="multiple">
        <option value="City1">City1</option>
        <option value="City2">City2</option>
        <option value="City3">City3</option>
        <option value="City4">City4</option>
        <option value="City5">City5</option>
    </select><br>
    <input type="submit" value="SUBMIT">
</form>
<hr>
<pre>
    1. request.getParameterValues()
    2. 一个用户注册应用程序
</pre>
</body>
</html>
