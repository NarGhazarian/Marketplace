<%@ page import="Admin.AdminDAO" %>
<%@ page import="Admin.Admin" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Narek
  Date: 03.04.2022
  Time: 3:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<%

    String login = request.getParameter("login");
    String password = request.getParameter("password");
    AdminDAO adminDAO = new AdminDAO();
    if (adminDAO.checkPassLog(new Admin(login,password))){
        response.sendRedirect("products.jsp");
    }

    else {
        response.sendRedirect("authForm.jsp");
    }



%>
</body>
</html>
