<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/3/2021
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<div class="d-flex justify-content-center">
    <form action="add.jsp">
        <label>ID</label>
        <br>
        <div class="input-group mb-3">
            <input type="text" name="id" placeholder="auto" aria-label="ID" readonly>
        </div>
        <br>
        <label>Name</label>
        <br>
        <div class="input-group mb-3">
            <input type="text" name="name" aria-label="Name">
        </div>
        <br>
        <label>Price</label>
        <br>
        <div class="input-group mb-3">
            <input type="text" name="price" aria-label="Price">
        </div>

        <br>

        <div class="d-flex justify-content-center">
            <input type="submit" class="btn btn-info" role="button">
        </div>
    </form>
</div>
</body>
</html>
