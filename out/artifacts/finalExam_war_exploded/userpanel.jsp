<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 12/30/2018
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User - Panel</title>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    ArrayList<Object> fromList = (ArrayList<Object>) session.getAttribute("list");
%>
<h1> Welcome to <%=username%>! </h1>
<% for (Object fromLists : fromList) {
    System.out.println(fromList);%>
    <h2><%=fromLists%></h2>
<%}%>
</body>
</html>
