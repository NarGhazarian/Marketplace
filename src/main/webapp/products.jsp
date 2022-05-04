<%@ page import="Products.ProductsDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Products.Products" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Narek
  Date: 08.04.2022
  Time: 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">#</th>
        <th  scope="col">Product Name</th>
        <th  scope="col">Price</th>
        <th  scope="col">Image</th>
        <th  scope="col">Edit</th>
        <th  scope="col">Delete</th>
    </tr>
    </thead>

    <%
        ProductsDAO productsDAO = new ProductsDAO();
        try {
            productsDAO.fillProducts();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>

    <%
        List<Products> allStudents = productsDAO.getAllProducts();
        for (int i = 0; i < allStudents.size(); i++) {
    %>
    <tr>
        <th scope="row">
            <%=allStudents.get(i).getId()%>
        </th>

        <td>
            <%=allStudents.get(i).getProductName()%>
        </td>

        <td>
            <%=allStudents.get(i).getProductPrice()%>
        </td>

        <td>
            <IMG src="images/<%=allStudents.get(i).getImage()%>">
        </td>

        <td>
            <a href="editForm.jsp?editId=<%=i%>" class="btn btn-info" role="button">Edit</a>
        </td>
        <td>
            <a href="delete.jsp?deleteId=<%=i%>" class="btn btn-info" role="button">Delete</a>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>


<div class="d-flex justify-content-center">
    <a href="addForm.jsp" class="btn btn-info" role="button" >Add</a>
</div>

</body>
</html>
