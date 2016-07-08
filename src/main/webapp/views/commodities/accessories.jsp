<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="custom" uri="/WEB-INF/custom.tld" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="content accessories-catalogue">
    <div class="main">

        <aside class="side-nav white-space" id="side_nav">

            <div class="pr-menu-but text-center" id="menu_but">меню</div>

            <div class="side-block">
                <h2 class="pr-text-pink">АКСЕСУАРИ</h2>
            </div>

            <form:form method="get" modelAttribute="accessoriesFilters">

                <div class="side-block">
                    <input type="checkbox" name="type" value="сережки" id="id-1">
                    <label class="pr-label" for="id-1"></label>
                    <span class="pr-text-magenta">сережки</span>
                    <br>

                    <input type="checkbox" name="type" value="підвіска" id="id-2">
                    <label class="pr-label" for="id-2"></label>
                    <span class="pr-text-magenta">підвіски</span>
                    <br>

                    <input type="checkbox" name="type" value="колечко" id="id-3">
                    <label class="pr-label" for="id-3"></label>
                    <span class="pr-text-magenta">колечка</span>
                    <br>

                    <input type="checkbox" name="type" value="кольє" id="id-4">
                    <label class="pr-label" for="id-4"></label>
                    <span class="pr-text-magenta">кольє</span>
                    <br>

                    <input type="checkbox" name="type" value="браслет" id="id-5">
                    <label class="pr-label" for="id-5"></label>
                    <span class="pr-text-magenta">браслети</span>
                    <br>

                    <input type="checkbox" name="type" value="корона" id="id-6">
                    <label class="pr-label" for="id-6"></label>
                    <span class="pr-text-magenta">корони</span>
                    <br>

                    <input type="checkbox" name="type" value="обруч" id="id-7">
                    <label class="pr-label" for="id-7"></label>
                    <span class="pr-text-magenta">обручі</span>
                    <br>

                    <input type="checkbox" name="type" value="весільний" id="id-8">
                    <label class="pr-label" for="id-8"></label>
                    <span class="pr-text-magenta">весільні</span>
                    <br>
                    <input type="checkbox" name="type" value="клатч" id="id-9">
                    <label class="pr-label" for="id-9"></label>
                    <span class="pr-text-magenta">клатчі</span>
                    <br>

                    <input type="checkbox" name="type" value="тематичний" id="id-10">
                    <label class="pr-label" for="id-10"></label>
                    <span class="pr-text-magenta">тематичні</span>
                    <br>

                    <input type="checkbox" name="type" value="етно" id="id-11">
                    <label class="pr-label" for="id-11"></label>
                    <span class="pr-text-magenta">етно</span>

                </div>
                <div style="width: 50%; margin: 4% auto 0;">
                    <button class="dress-rent-edit-2 pr-edit-but" type="submit">Знайти</button>
                </div>
            </form:form>


            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <div style="width: 50%; margin: 4% auto 0;">
                    <button id="addAccessory" class="dress-rent-edit-2 pr-edit-but">Додати аксесуар</button>
                </div>
            </sec:authorize>

        </aside><!--aside.side-nav-->

        <section class="accessories-wrapper" id="accessories_images">
            <c:forEach items="${accessories.getContent()}" var="accessory">
                <div class="accessories-col">

                    <c:if test="${accessory.commodityPicturesList.get(0).name ne null}">
                        <div class="accessories-picture"
                             style="background-image: url(/files/img/commodities/${accessory.id}/${accessory.commodityPicturesList.get(0).name});">
                        </div>
                    </c:if>

                    <h4 class="accessories-header pr-text-magenta">${accessory.name}</h4>

                    <span class="accessories-code pr-text-grey">${accessory.articul}</span>

                    <hr class="pr-pink-line">

                    <div class="accessories-rent">
                        <button class="pr-accessories-rent">ПРОКАТ</button>
                        <br>
                        <span class="pr-text-magenta">${accessory.rentPrice}<sup>грн</sup></span>
                    </div>

                    <div class="accessories-sell">
                        <button class="pr-accessories-sell">ПРОДАЖ</button>
                        <br>
                        <span class="pr-text-magenta">${accessory.buyPrice}<sup>грн</sup></span>
                    </div>
                </div>
                <!--accessories-col-->
            </c:forEach>


        </section>
    </div><!--div.main-->

    <div class="pagination-wrapper">
        <custom:pageable page="${accessories}"/>
    </div><!--div.pagination-wrapper-->
</section>
<!--section.content-->
<div id="accessoryForm" style="display: none" class="add_item_content pure-u-5-12">
    <form:form id="add-new-commodity" action="/add/new/commodity/accessory?${_csrf.parameterName}=${_csrf.token}"
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
                <form:option value="сережки"/>
                <form:option value="підвіска"/>
                <form:option value="колечко"/>
                <form:option value="кольє"/>
                <form:option value="браслет"/>
                <form:option value="корона"/>
                <form:option value="обруч"/>
                <form:option value="весільний"/>
                <form:option value="клач"/>
                <form:option value="тематичний"/>
                <form:option value="етно"/>
            </form:select>
        </div>
        <div class="add_item_field">
            <form:label path="action">Акційний:</form:label>
            <form:checkbox cssStyle="display: block" path="action"/>
        </div>
        <div id="photos">
            <input type="file" name="picture" required>
        </div>
        <div style="margin-top: 2%;">
            <input style="width: 35%; background-color:#f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white"
                   type="button" id="addPhoto" value="Додати фото"/>
            <input style="width: 35%; background-color: #f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white"
                   type="button" id="deletePhoto" value="Видалити фото"/>
        </div>
        <div style="text-align: center; margin-top: 2%;">
            <form:button
                    style="width: 35%; background-color: #f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white">Додати товар</form:button>
        </div>
    </form:form>
</div>
<script src="/resources/js/multipartInputs.js"></script>
<script>
    $('#addAccessory').click(function () {
        $('#accessoryForm').toggle();
    });
</script>