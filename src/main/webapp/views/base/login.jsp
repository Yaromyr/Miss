<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="/login" method="post">
    <h1>Увійдіть у сайт</h1>
    <label for="login-user-name">Логін:</label>
    <input id="login-user-name" placeholder="Email або телефон" name="username" required>
    <label for="login-user-password">Пароль:</label>
    <input id="login-user-password" placeholder="Пароль" name="password" required>
    <button type="submit">Увійти</button>
</form:form>