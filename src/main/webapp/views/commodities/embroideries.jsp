<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="custom" uri="/WEB-INF/custom.tld" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<section class="content shirts-catalogue-page">
    <div class="main">

        <aside class="side-nav pure-u-1-6 white-space" id="side_nav">
            <div class="pr-menu-but text-center" id="menu_but">меню</div>

            <div class="side-block">
                <h2 class="pr-text-pink">ВИШИВАНКИ</h2>
            </div>
            <form:form method="get" modelAttribute="embroideriesFilter">
                <div class="side-block">
                    <input type="checkbox" name="" value="" id="id-1">
                    <label class="pr-label" for="id-1"></label>
                    <span class="pr-text-magenta">сорочки</span>
                    <br>

                    <input type="checkbox" name="" value="" id="id-2">
                    <label class="pr-label" for="id-2"></label>
                    <span class="pr-text-magenta">костюми</span>
                    <br>

                    <input type="checkbox" name="" value="" id="id-3">
                    <label class="pr-label" for="id-3"></label>
                    <span class="pr-text-magenta">сукні</span>
                    <br>

                </div>

                <div style="width: 50%; margin: 4% auto 0;">
                    <button class="dress-rent-edit-2 pr-edit-but" type="submit">Знайти</button>
                </div>
            </form:form>


            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <div style="width: 50%; margin: 4% auto 0;">
                    <button id="addEmbroidery" class="dress-rent-edit-2 pr-edit-but">Додати вишиванку</button>
                </div>
            </sec:authorize>

        </aside><!--aside.side-nav-->


        <section class="shirts-wrapper" id="shirts_images">
            <c:forEach items="${embroideries.getContent()}" var="embroidery">
                <div class="shirts-col">

                    <c:if test="${embroidery.commodityPicturesList.get(0).name ne null}">
                        <div class="shirts-picture"
                             style="background-image: url(/files/img/commodities/${embroidery.id}/${embroidery.commodityPicturesList.get(0).name});">
                        </div>
                    </c:if>

                    <h4 class="shirts-header pr-text-magenta">${embroidery.name}</h4>

                    <span class="shirts-code pr-text-grey">${embroidery.articul}</span>

                    <hr class="pr-pink-line">

                    <div class="shirts-rent">
                        <button class="pr-shirts-rent">ПРОКАТ</button>
                        <br>
                        <span class="pr-text-magenta">${embroidery.rentPrice}<sup>грн</sup></span>
                    </div>

                    <div class="shirts-sell">
                        <button class="pr-shirts-sell">ПРОДАЖ</button>
                        <br>
                        <span class="pr-text-magenta">${embroidery.buyPrice}<sup>грн</sup></span>
                    </div>
                </div>
                <!--shirts-col-->
            </c:forEach>

        </section>
    </div><!--div.main-->

    <div class="pagination-wrapper">
        <custom:pageable page="${embroideries}"/>
    </div><!--div.pagination-wrapper-->
</section>
<!--section.content-->
<div id="embroideryForm" style="display: none;" class="add_item_content pure-u-5-12">
    <form:form id="add-new-commodity" action="/add/new/commodity/embroider?${_csrf.parameterName}=${_csrf.token}"
               method="post" modelAttribute="commodity" cssClass="add_item_form" enctype="multipart/form-data">
        <div class="add_item_field">
            <form:label path="brand">Бренд:</form:label>
            <form:input path="brand"/>
        </div>
        <div class="add_item_field">
            <form:label path="name">Назва:</form:label>
            <form:input path="name"/>
        </div>
        <div class="add_item_field">
            <form:label path="articul">Артикул:</form:label>
            <form:input path="articul"/>
        </div>
        <div class="add_item_field">
            <form:label path="rentPrice">Ціна прокату:</form:label>
            <form:input path="rentPrice"/>
        </div>
        <div class="add_item_field">
            <form:label path="buyPrice">Ціна покупки:</form:label>
            <form:input path="buyPrice"/>
        </div>
        <div class="add_item_field">
            <form:label path="type">Тип:</form:label>
            <form:select path="type">
                <form:option value="сорочка"/>
                <form:option value="костюм"/>
                <form:option value="сукня"/>
            </form:select>
        </div>
        <div class="add_item_field">
            <form:label path="action">Акційний:</form:label>
            <form:checkbox cssStyle="display: block" path="action"/>
        </div>
        <div style="text-align: center" id="photos">
            <input type="file" name="picture" required>
        </div>
        <div style="margin-top: 2%;">
            <input style="width: 35%; background-color:#f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white"
                   type="button" id="addPhoto" value="Додати фото"/>
            <input style="width: 35%; background-color: #f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white"
                   type="button" id="deletePhoto" value="Видалити фото"/>
        </div>
        <div style="text-align: center; margin-top: 2%" class="add_item_field">
            <form:button
                    style="width: 35%; background-color: #f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white">Додати товар</form:button>
        </div>
    </form:form>
</div>
<script src="/resources/js/multipartInputs.js"></script>
<script>
    $('#addEmbroidery').click(function () {
        $('#embroideryForm').toggle();
    });
</script>