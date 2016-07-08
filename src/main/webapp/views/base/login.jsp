<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section class="content login-page">
    <div class="login_content pure-u-5-12">
        <form:form cssClass="login_form" action="/login" method="post">
            <h1 style="color: #f096b6">Увійти</h1>
            <input id="login-user-name" class="pr-login" placeholder="Email або телефон" name="username" required>
            <br>
            <br>
            <input id="login-user-password" type="password" class="pr-password" placeholder="Пароль" name="password" required>
            <br>
            <br>
            <button class="pr-enter-but" type="submit">Увійти</button>
        </form:form>
    </div>
</section>
