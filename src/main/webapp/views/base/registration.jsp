<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section class="content registration-page">
    <div style="background-color: rgba(0, 0, 0, 0);" class="reg_content pure-u-8-24">
        <form:form cssClass="reg_form" method="post" modelAttribute="user" action="registration">
            <h1 style="text-align: center; color:#f096b6">Реєстрація</h1>
            <div class="reg_field">
                <form:input cssClass="pr-name" path="name" placeholder="Ім'я"/>
                <form:errors path="name" cssClass="pr-error"/>
            </div>
            <br>
            <br>
            <div class="reg_field">
                <form:input cssClass="pr-surname" path="secondname" placeholder="Прізвище"/>
                <form:errors path="secondname" cssClass="pr-error"/>
            </div>
            <br>
            <div class="reg_field">
                <form:input cssClass="pr-e-mail" path="email" placeholder="Email"/>
                <form:errors path="email" cssClass="pr-error"/>
            </div>
            <br>
            <div class="reg_field">
                <form:input cssClass="pr-phone" path="phone" placeholder="Телефон"/>
                <form:errors path="phone" cssClass="pr-error"/>
            </div>
            <br>
            <div class="reg_field">
                <form:password cssClass="pr-password" path="password" placeholder="Пароль"/>
                <form:errors path="passwordConfirm" cssClass="pr-error"/>
            </div>
            <br>
            <div class="reg_field">
                <form:password cssClass="pr-password" path="passwordConfirm" placeholder="Підтвердження паролю"/>
                <form:errors path="passwordConfirm" cssClass="pr-error"/>
            </div>
            <br>
            <div class="button_field">
                <form:button class="pr-reg-but">Зареєструватись</form:button>
            </div>
        </form:form>
    </div>
</section>


