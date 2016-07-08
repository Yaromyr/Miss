<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 07.07.2016
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="/resources/js/rent-for.js"></script>
<section class="content rent-for-page">
    <div class="main pure-g white-space">

        <aside class="side-nav pure-u-1-6 white-space" id="side_nav">

            <!--<div class="pr-menu-but text-center" id="menu_but">меню</div>-->

            <div class="side-block">
                <h2 class="pr-text-pink">ПРО ПРОЕКТ</h2>
            </div><!--div.side-block-->

            <div class="side-block">

                <a href="${pageContext.request.contextPath}/view/rent/for" class="pr-text-magenta">Як взяти сукню в
                    прокат
                </a>
                <br>

                <a href="${pageContext.request.contextPath}/view/rent/to" class="pr-text-magenta">Як здати, свою, сукню
                    в прокат
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
                    <button class="dress-rent-edit pr-edit-but">Редагувати</button>
                </div>
            </sec:authorize>
        </aside><!--aside.side-nav-->

        <div class="pure-u-5-6 dress-rent pure-g-r">

            <p class="pure-u-1-1 dress-rent__header pr-text-magenta">ЯК ВЗЯТИ СУКНЮ В ПРОКАТ</p>

            <div class="pure-u-1-4 dress-rent-picture">
                <img src="/resources/img/about_princess.png" alt="" class="dress-rent-picture__image">
            </div>

            <div class="pure-u-3-4 dress-rent__content pr-text-magenta">
                <div class="pr-text-magenta">
                        <pre class="dress-rent__text" style="font-family: 'Arial Unicode MS'">
 Для того, щоб оформити прокат:

- Потрібно обрати сукню;

- Зарезервувати її на потрібну Вам дату;

- Резерв складає 30% від вартості прокату, решту (70%)
оплачуєте в день, коли забираєте сукню;

- Сукня надається на 1 добу і 2 доби даємо в подарунок.
                        </pre>
                    <textarea class="dress-rent__edit-text" cols="70" rows="10" style="display: none;"></textarea>
                </div>
            </div><!--div.dress-rent__content-->
        </div><!--div.dress-rent-->

    </div>
</section>
<script>
    $('.dress-rent__text').css({
        fontFamily: 'Arial Unicode MS'
    });
    $('.dress-rent__edit-text').val($('.dress-rent__text').text());


    $('.dress-rent-edit').click(function () {

        if ($('.dress-rent-edit').text() == 'Редагувати') {
            $(this).text('Зберегти')
        } else {
            $(this).text('Редагувати')
        }

        $('.dress-rent__text').text($('.dress-rent__edit-text').val());
        $('.dress-rent__text').css({
            fontFamily: 'Arial Unicode MS'
        });
        $('.dress-rent__edit-text').toggle();

        $('.dress-rent__text').toggle();
    });

</script>