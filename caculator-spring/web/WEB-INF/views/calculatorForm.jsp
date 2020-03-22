<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 3/22/2020
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  action="calculator" method="POST" >
    <fieldset>
        <input type="number" id="leftOperand" placeholder="Left Operand" name="leftOperand" value="${leftOperand}"/>
        <select name="operator">
            <option value="+" selected="${operator.equals('+')}">+</option>
            <option value="-" selected="${operator.equals('-')}">-</option>
            <option value="*" selected="${operator.equals('*')}">*</option>
            <option value="/" selected="${operator.equals('/')}">/</option>
            <option value="^" selected="${operator.equals('^')}">^</option>
        </select>
        <input type="number" id="rightOperand" placeholder="Right Operand" name="rightOperand" value="${rightOperand}"/>

        <p>=</p>

        <input type="text" id="result" placeholder="Result" name="result" value="${result}"/>

        <button type="submit">Calculate</button>
    </fieldset>
</form>
</body>
</html>
