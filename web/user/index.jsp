<%--
  Created by IntelliJ IDEA.
  User: e.itsikson
  Date: 21.06.2015
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%=request.getUserPrincipal().getName()%>, access granted
<br>
<a href="<%=request.getContextPath()%>/logout.jsp">Logout</a>
</body>
</html>
