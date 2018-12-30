<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 12/30/2018
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Register </title>
</head>
<body>
    <form action="" method="post">
        <input placeholder="username" type="text" name="username" id="username">
        <input placeholder="password" type="text" name="password" id="password">
        <input placeholder="firstname" type="text" name="firstName" id="firstName">
        <input type="submit" value="OK!" formaction="submitRegister">
    </form>
</body>
<script>
    window.addEventListener("load",
        function () {
           var firstname = document.getElementById("firstName");
           var click = 0;
           firstname.addEventListener("click",
            function () {
               if (click == 0){
                   firstname.style.boxShadow = "0 0 8px black";
                   click++;
               }else if (click == 1){
                   firstname.style.boxShadow = "0 0 0px black";
                   click = 0;
               }

            });
        });
</script>
</html>
