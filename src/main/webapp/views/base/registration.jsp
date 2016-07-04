<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form method="post" modelAttribute="user" action="reg">
    <div>
        <form:label path="name">Ім'я:</form:label>
        <form:input path="name"/>
        <form:errors path="name"/>
    </div>
    <div>
        <form:label path="secondname">Прізвище:</form:label>
        <form:input path="secondname"/>
        <form:errors path="secondname"/>
    </div>
    <div>
        <form:label path="email">Email:</form:label>
        <form:input path="email"/>
        <form:errors path="email"/>
    </div>
    <div>
        <form:label path="phone">Телефон:</form:label>
        <form:input path="phone"/>
        <form:errors path="phone"/>
    </div>
    <div>
        <form:label path="password">Пароль:</form:label>
        <form:password path="password"/>
        <form:errors path="passwordConfirm"/>
    </div>
    <div>
        <form:label path="passwordConfirm">Підтвердження паролю:</form:label>
        <form:password path="passwordConfirm"/>
        <form:errors path="passwordConfirm"/>
    </div>
    <div>
        <form:button>Зареєструватись</form:button>
    </div>
</form:form>
