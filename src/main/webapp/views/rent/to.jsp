<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 07.07.2016
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="/resources/js/rent-to.js"></script>
<section class="content rent-to-page">

    <div class="main pure-g white-space">

        <aside class="side-nav pure-u-1-6 white-space" id="side_nav">

            <!-- <div class="pr-menu-but text-center" id="menu_but">меню</div>-->

            <div class="side-block">
                <h2 class="pr-text-pink">ПРО ПРОЕКТ</h2>
            </div><!--div.side-block-->

            <div class="side-block">

                <a href="${pageContext.request.contextPath}/view/rent/for" class="pr-text-magenta">Як взяти сукню в
                    прокат
                </a>
                <br>

                <a href="${pageContext.request.contextPath}/view/rent/to" class="pr-text-magenta pr-active">Як здати,
                    свою, сукню в прокат
                </a>
                <br>

                <a href="${pageContext.request.contextPath}/404" class="pr-text-magenta">Доставка
                </a>
                <br>

                <a href="${pageContext.request.contextPath}/view/ask" class="pr-text-magenta">ASKme
                </a>

            </div><!--div.side-block-->

            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <div style="width: 50%; margin: 4% auto 0;">
                    <button class="dress-rent-edit-1 pr-edit-but">Редагувати лівий блок</button>
                </div>

                <div style="width: 50%; margin: 4% auto 0;">
                    <button class="dress-rent-edit-2 pr-edit-but">Редагувати правий блок</button>
                </div>
            </sec:authorize>

        </aside><!--aside.side-nav-->

        <div class="pure-u-5-6 dress-rent pure-g-r">

            <p class="pure-u-1-1 dress-rent__header pr-text-magenta">ЯК ЗДАТИ, СВОЮ, СУКНЮ В ПРОКАТ</p>

            <div class="pure-u-1-4 dress-rent-picture">
                <img src="/resources/img/about_princess.png" alt="" class="dress-rent-picture__image">
            </div>

            <div class="pure-u-3-4 dress-rent__content pr-text-magenta">
                <div class="pr-text-magenta pure-g-r">
                    <div class="dress-rent__text pure-u-1-2">
<pre class="dress-rent__text-1" style="font-family: 'Arial Unicode MS'">
Сукня приймається в студію Miss Princess тільки:

- До прокату та до продажу;

- Варіант або/або неможливий;

- Після хімчистки;

- За відсутності пошкоджень та забруднень на ній;

- Якщо сукня брендова або ексклюзивна, шита на
замовлення.
</pre>
                        <textarea class="dress-rent__edit-text-1" cols="50" rows="10" style="display: none;"></textarea>
                    </div><!--div.dress-rent__text-->

                    <div class="dress-rent__text pure-u-1-2">
<pre class="dress-rent__text-2" style="font-family: 'Arial Unicode MS'">
Ви отримуєте від студії Miss Princess:

- 40% плати за прокат, а саме: 20% готівкою в
студії або на карту ПриватБанк та 20% у вигляді
бонусів, які Ви можете використати для будь-якої
послуги в нашій студії (макіяж, зачіска, корекція
брів, оренда сукні, фотосесія);

- повну ціну сукні, зазначену Вами в анкеті прийому
сукні, у разі покупки Вашої сукні;

- послуги хімчистки після кожного прокату Вашої
сукні за рахунок;

- смс-повідомлення з інформацією про прокат або
продаж Вашої сукні, суми на Вашому бонусному
рахунку та суми, нарахованої Вам готівкою.
</pre>
                        <textarea class="dress-rent__edit-text-2" cols="50" rows="10" style="display: none;"></textarea>
                    </div><!--div.dress-rent__text-->
                </div>
            </div><!--div.dress-rent__content-->
        </div><!--div.dress-rent-->


    </div>
</section>
<!---->

<script>
    $('.dress-rent__text').css({
        fontFamily: 'Arial Unicode MS'
    });
    $('.dress-rent__edit-text-1').val($('.dress-rent__text-1').text());
    $('.dress-rent__edit-text-2').val($('.dress-rent__text-2').text());


    $('.dress-rent-edit-1').click(function () {

        if ($('.dress-rent-edit-1').text() == 'Редагувати лівий блок') {
            $(this).text('Зберегти')
        } else {
            $(this).text('Редагувати лівий блок')
        }

        $('.dress-rent__text-1').text($('.dress-rent__edit-text-1').val());
        $('.dress-rent__text-1').css({
            fontFamily: 'Arial Unicode MS'
        });
        $('.dress-rent__edit-text-1').toggle();

        $('.dress-rent__text-1').toggle();
    });

    $('.dress-rent-edit-2').click(function () {

        if ($('.dress-rent-edit-2').text() == 'Редагувати правий блок') {
            $(this).text('Зберегти')
        } else {
            $(this).text('Редагувати правий блок')
        }

        $('.dress-rent__text-2').text($('.dress-rent__edit-text-2').val());
        $('.dress-rent__text-2').css({
            fontFamily: 'Arial Unicode MS'
        });
        $('.dress-rent__edit-text-2').toggle();

        $('.dress-rent__text-2').toggle();
    });

</script>
