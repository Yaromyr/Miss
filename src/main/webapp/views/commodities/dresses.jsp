<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form:form id="add-new-dress" action="/add/new/commodity/dress" method="post" modelAttribute="commodity">
    <div>
        <form:label path="brand">Бренд:</form:label>
        <form:input path="brand"/>
    </div>
    <div>
        <form:label path="name">Назва:</form:label>
        <form:input path="name"/>
    </div>
    <div>
        <form:label path="articul">Артикул:</form:label>
        <form:input path="articul"/>
    </div>
    <div>
        <form:label path="rentPrice">Ціна прокату:</form:label>
        <form:input path="rentPrice"/>
    </div>
    <div>
        <form:label path="buyPrice">Ціна покупки:</form:label>
        <form:input path="buyPrice"/>
    </div>
    <div>
        <form:label path="action">Акційний:</form:label>
        <form:checkbox path="action"/>
    </div>
    <div>
         <form:button>Додати товар</form:button>
    </div>
</form:form>
