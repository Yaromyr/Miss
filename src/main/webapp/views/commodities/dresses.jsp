<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="custom" uri="/WEB-INF/custom.tld" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<section class="content dress-catalogue-page">
    <div class="main">

        <aside class="side-nav pure-u-1-6 white-space" id="side_nav">
            <div class="pr-menu-but text-center" id="menu_but">меню</div>

            <div class="side-block">
                <h2 class="pr-text-pink">СУКНІ</h2>
            </div>

            <div class="side-block">
                <h3 class="pr-text-magenta"><a href="#">ПРОПОЗИЦІЯ ДНЯ</a></h3>
            </div>

            <form:form modelAttribute="dressesFilters" method="get">
                <div class="side-block">
                    <h4 class="pr-text-pink">ВИДИ</h4>

                    <input type="checkbox" name="type" value="коктельне" id="id-1">
                    <label class="pr-label" for="id-1"></label>
                    <span class="pr-text-magenta">коктейльні</span>
                    <br>

                    <input type="checkbox" name="type" value="вечірнє" id="id-2">
                    <label class="pr-label" for="id-2"></label>
                    <span class="pr-text-magenta">вечірні</span>
                    <br>

                    <input type="checkbox" name="type" value="весільне" id="id-3">
                    <label class="pr-label" for="id-3"></label>
                    <span class="pr-text-magenta">весільні</span>
                    <br>

                    <input type="checkbox" name="type" value="а кожен день" id="id-4">
                    <label class="pr-label" for="id-4"></label>
                    <span class="pr-text-magenta">на кожен день</span>
                    <br>
                </div>

                <div class="side-block">

                    <h4 class="pr-text-pink">ДОВЖИНА</h4>

                    <input type="checkbox" name="length" value="коротке" id="id-5">
                    <label class="pr-label" for="id-5"></label>
                    <span class="pr-text-magenta">коротке</span>
                    <br>

                    <input type="checkbox" name="length" value="довге" id="id-6">
                    <label class="pr-label" for="id-6"></label>
                    <span class="pr-text-magenta">довге</span>
                    <br>

                    <input type="checkbox" name="length" value="міні" id="id-7">
                    <label class="pr-label" for="id-7"></label>
                    <span class="pr-text-magenta">міні</span>
                    <br>
                </div>

                <div class="side-block">
                    <h4 class="pr-text-pink">СТИЛІ</h4>

                    <input type="checkbox" name="style" value="з відкритою спиною" id="id-8">
                    <label class="pr-label" for="id-8"></label>
                    <span class="pr-text-magenta">з відкритою спиною</span>
                    <br>

                    <input type="checkbox" name="style" value="на довгий рукав" id="id-9">
                    <label class="pr-label" for="id-9"></label>
                    <span class="pr-text-magenta">на довгий рукав</span>
                    <br>

                    <input type="checkbox" name="style" value="зі шлейфом" id="id-10">
                    <label class="pr-label" for="id-10"></label>
                    <span class="pr-text-magenta">зі шлейфом</span>
                    <br>

                    <input type="checkbox" name="style" value="мереживні" id="id-11">
                    <label class="pr-label" for="id-11"></label>
                    <span class="pr-text-magenta">мереживні</span>
                    <br>

                    <input type="checkbox" name="style" value="luxury" id="id-12">
                    <label class="pr-label" for="id-12"></label>
                    <span class="pr-text-magenta">luxury</span>
                    <br>

                    <input type="checkbox" name="style" value="етно" id="id-13">
                    <label class="pr-label" for="id-13"></label>
                    <span class="pr-text-magenta">етно</span>
                    <br>
                </div>

                <div class="side-block">
                    <h4 class="pr-text-pink">РОЗМІРИ</h4>

                    <ul class="size-list pure-g-r">
                        <li class="size-list__item">
                            <input type="checkbox" name="sizes" value="xs" class="pr-size-but-xs" id="pr-xs">
                            <label for="pr-xs"></label>
                        </li>
                        <li class="size-list__item">
                            <input type="checkbox" name="sizes" value="s" class="pr-size-but-s" id="pr-s">
                            <label for="pr-s"></label>
                        </li>
                        <li class="size-list__item">
                            <input type="checkbox" name="sizes" value="m" class="pr-size-but-m" id="pr-m">
                            <label for="pr-m"></label>
                        </li>
                        <li class="size-list__item">
                            <input type="checkbox" name="sizes" value="l" class="pr-size-but-l" id="pr-l">
                            <label for="pr-l"></label>
                        </li>
                        <li class="size-list__item">
                            <input type="checkbox" name="sizes" value="xl" class="pr-size-but-xl" id="pr-xl">
                            <label for="pr-xl"></label>
                        </li>
                    </ul>
                </div>

                <div class="side-block">

                    <ul class="color-list-1">
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="1" class="pr-color-but-no-color" id="pr-1">
                            <label for="pr-1"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="2" class="pr-color-but-white" id="pr-2">
                            <label for="pr-2"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="3" class="pr-color-but-yellow" id="pr-3">
                            <label for="pr-3"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="4" class="pr-color-but-green" id="pr-4">
                            <label for="pr-4"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="5" class="pr-color-but-blue" id="pr-5">
                            <label for="pr-5"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="6" class="pr-color-but-red" id="pr-6">
                            <label for="pr-6"></label>
                        </li>
                    </ul><!--ul.color-list-1-->

                    <ul class="color-list-2">
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="7" class="pr-color-but-pink" id="pr-7">
                            <label for="pr-7"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="8" class="pr-color-but-purple" id="pr-8">
                            <label for="pr-8"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="9" class="pr-color-but-blown" id="pr-9">
                            <label for="pr-9"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="10" class="pr-color-but-black" id="pr-10">
                            <label for="pr-10"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="11" class="pr-color-but-grey" id="pr-11">
                            <label for="pr-11"></label>
                        </li>
                        <li class="color-list__item">
                            <input type="checkbox" name="color" value="12" class="pr-color-but-beige" id="pr-12">
                            <label for="pr-12"></label>
                        </li>
                    </ul><!--ul.color-list-2-->
                </div>
                <div style="width: 50%; margin: 4% auto 0;">
                    <button class="dress-rent-edit-2 pr-edit-but" type="submit">Знайти</button>
                </div>
            </form:form>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <div style="width: 50%; margin: 4% auto 0;">
                    <button id="addDress" class="dress-rent-edit-2 pr-edit-but">Додати сукню</button>
                </div>
            </sec:authorize>
        </aside><!--aside.side-nav-->


        <section class="dress-wrapper" id="dress_images">
            <c:forEach items="${dresses.getContent()}" var="dress">
                <a href="/get/one/commodity/dress/${dress.id}"></a>
                <div class="dress-col">
                    <div style="width: 100%; height: 100%">


                        <c:if test="${dress.commodityPicturesList.get(0).name ne null}">
                            <div class="dress-picture"
                                 style="background-image: url(/files/img/commodities/${dress.id}/${dress.commodityPicturesList.get(0).name});">
                            </div>
                        </c:if>

                        <h4 class="dress-header pr-text-magenta">${dress.name}</h4>

                        <span class="dress-code pr-text-grey">${dress.articul}</span>

                        <hr class="pr-pink-line">

                        <div class="dress-rent">
                            <button class="pr-dress-rent">ПРОКАТ</button>
                            <br>
                            <span class="pr-text-magenta">${dress.rentPrice}<sup>грн</sup></span>
                        </div>

                        <div class="dress-sell">
                            <button class="pr-dress-sell">ПРОДАЖ</button>
                            <br>
                            <span class="pr-text-magenta">${dress.buyPrice}<sup>грн</sup></span>
                        </div>
                    </div>
                </div>
                <!--dress-col-->
            </c:forEach>
            <div class="pagination-wrapper">
                <custom:pageable page="${dresses}"/>
            </div>
        </section>
    </div><!--div.main-->


</section>

<div id="dressForm" style="display: none" class="add_item_content pure-u-5-12">
    <form:form id="add-new-commodity" action="/add/new/commodity/dress?${_csrf.parameterName}=${_csrf.token}"
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
                <form:option value="коктельне"/>
                <form:option value="вечірнє"/>
                <form:option value="весільнє"/>
                <form:option value="на кожен день"/>
            </form:select>
        </div>
        <div class="add_item_field">
            <form:label path="length">Довжина:</form:label>
            <form:select path="length">
                <form:option value="коротке"/>
                <form:option value="довге"/>
                <form:option value="міді"/>
            </form:select>
        </div>
        <div class="add_item_field">
            <form:label path="style">Стиль:</form:label>
            <form:select path="style">
                <form:option value="з відкритою спиною"/>
                <form:option value="на довгий рукав"/>
                <form:option value="зі шлейфом"/>
                <form:option value="мереживні"/>
                <form:option value="luxury"/>
                <form:option value="етно"/>
            </form:select>
        </div>
        <div>
            <form:label path="colorsList">Колір:</form:label>
            <form:select path="colorsList">
                <form:options items="${colors}"/>
            </form:select>
        </div>
        <div class="add_item_field">
            <form:label path="action">Акційний:</form:label>
            <form:checkbox cssStyle="display: block" path="action"/>
        </div>
        <div id="photos">
            <input type="file" name="picture" required>
        </div>
        <div>
            <input style="width: 35%; background-color:#f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white"
                   type="button" id="addPhoto" value="Додати фото"/>
            <input style="width: 35%; background-color:#f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white"
                   type="button" id="deletePhoto" value="Видалити фото"/>
        </div>
        <div class="add_item_field">
            <form:button
                    style="width: 35%; background-color: #f096b6; border-radius: 10px; border:0; padding: 4px; margin: 0 7%; color: white">Додати товар</form:button>
        </div>
    </form:form>
</div>

<script src="/resources/js/multipartInputs.js"></script>
<script>
    $('#addDress').click(function () {
        $('#dressForm').toggle();
    });
</script>