<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 3/22/2020
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Sandwich Condiments</h1>
  <form action="/save" method="post">
    <input type="checkbox" name="condiments" value="Lettuce"> Lettuce
    <input type="checkbox" name="condiments" value="Tomato"> Tomato
    <input type="checkbox" name="condiments" value="Mustard"> Mustard
    <input type="checkbox" name="condiments" value="Sprouts" checked> Lettuce <br>
    <input type="submit" value="save">
  </form>
  </body>
</html>
