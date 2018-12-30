<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 12/30/2018
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="login" method="post">
    <input placeholder="username" id="username" name="username" type="text">
    <input placeholder="password" id="password" name="password" type="password">
    <select name="selection">
      <option value="mobile">Mobile</option>
      <option value="laptop">Laptop</option>
    </select>
    <input type="submit" value="Login">
  </form>
  </body>
</html>
