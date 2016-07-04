<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<p>Home page</p>
<sec:authorize access="isAnonymous()"><a href="/reg">Registration!</a></sec:authorize>
<sec:authorize access="isAnonymous()"><a href="/loginpage">Login!</a></sec:authorize>
<sec:authorize access="isAuthenticated()"><form:form action="/logout" method="post">
    <button type="submit">Logout!</button>
</form:form></sec:authorize>
<a href="/get/all/commodities/dresses">Плаття</a>
<a href="/get/all/commodities/embroideries">Вишивки</a>
<a href="/get/all/commodities/shirts">Сорочки</a>