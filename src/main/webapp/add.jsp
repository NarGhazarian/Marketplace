
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="Products.ProductsDAO" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/3/2021
  Time: 11:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <%
     ProductsDAO productsDAO = new ProductsDAO();
     try {
         productsDAO.fillProducts();
     } catch (SQLException e) {
         e.printStackTrace();
     }
     try {
         productsDAO.addProduct(request.getParameter("name"), Integer.parseInt(request.getParameter("price")));
     } catch (SQLException e) {
         e.printStackTrace();
     }
     response.sendRedirect("products.jsp");
 %>
</body>
</html>
