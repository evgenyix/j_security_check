<%--
  Created by IntelliJ IDEA.
  User: e.itsikson
  Date: 21.06.2015
  Time: 10:45
--%>
<%
    if (request.getSession().getAttribute("show_login_page_available") == null) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    } else {
        request.getSession().setAttribute("show_login_page_available", null);
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action='j_security_check' method='post'>
    <table>
        <tr>
            <td>Name:</td>
            <td><input type='text' name='j_username'></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type='password' name='j_password' size='8'></td>
        </tr>
    </table>
    <br>
    <input type='submit' value='login'>
</form>
</body>
</html>
