<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 07.07.2016
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section class="content ask-me-page">
    <div class="main pure-g white-space">

        <aside class="pure-u-1-6 white-space" id="side_nav">

            <div class="side-block">
                <h2 class="pr-text-pink">зонаКРАСИ</h2>
            </div>
            <!--div.side-block-->

            <div class="side-block">

                <a href="${pageContext.request.contextPath}/view/rent/for" class="pr-text-magenta">Як взяти сукню в
                    прокат</a>
                <br>

                <a href="${pageContext.request.contextPath}/view/rent/to" class="pr-text-magenta">Як здати, свою, сукню
                    в прокат</a>
                <br>

                <a href="${pageContext.request.contextPath}/404" class="pr-text-magenta">Доставка</a>
                <br>

                <a href="${pageContext.request.contextPath}/view/ask" class="pr-text-magenta pr-active">ASKme</a>

            </div>
            <!--div.side-block-->

            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <div style="margin: 4% auto 0;">
                    <button class="ask-me-add-left pr-edit-but">Добавити питання</button>
                </div>

                <div style="margin: 4% auto 0;">
                    <button class="ask-me-add-right pr-edit-but">Добавити відповідь</button>
                </div>
            </sec:authorize>

        </aside>
        <!--aside.side-nav-->

        <div class="ask-me pure-g-r" id="ask_me">

            <p class="pure-u-1-1 ask-me__header pr-text-magenta">ASKME</p>

            <div class="pure-u-1-4 ask-me-picture">
                <img src="/resources/img/about_princess.png" alt="" class="ask-me-picture__image">
            </div>

            <div class="ask-me-add-block-left"
                 style="display: none; width: 300px; height: 200px; background: transparent; position: absolute; top: 15%; left: 45%; z-index: 20; text-align: center;">
                Добавте текст
                    <textarea class="ask-me-add-text-left"
                              style="width: 100%; height: 70%;"></textarea>
                <button class="ask-me-add-but-left">Добавити</button>
            </div>

            <div class="ask-me-add-block-right"
                 style="display: none; width: 300px; height: 200px; background: transparent; position: absolute; top: 15%; left: 45%; z-index: 20; text-align: center;">
                Добавте текст
                    <textarea class="ask-me-add-text-right"
                              style="width: 100%; height: 70%;"></textarea>
                <button class="ask-me-add-but-right">Добавити</button>
            </div>

            <div class="pure-u-3-4 ask-me__content pr-text-magenta">

                <div class="left-message">
                    <span class="left-side__image"></span>
                    <span class="left-side__message message">Яка вартість прокату сукні?</span>
                </div>

                <div class="right-message">
                    <span class="right-side__message message">Вартість прокату залежить від сукні: від 350 грн до 3500 грн.</span>
                    <span class="right-side__image"></span>
                </div>

                <div class="left-message">
                    <span class="left-side__image"></span>
                    <span class="left-side__message message">На який термін дається сукня/аксесуар в прокат?</span>
                </div>

                <div class="right-message">
                    <span class="right-side__message message">Дається в прокат на 1 добу + 2 доби наша студія надає в подарунок.</span>
                    <span class="right-side__image"></span>
                </div>

                <div class="left-message">
                    <span class="left-side__image"></span>
                    <span class="left-side__message message">Як взяти сукню/аксесуар в прокат?</span>
                </div>

                <div class="right-message">
                            <span class="right-side__message message">Для того, щоб оформити прокат, потрібно обрати сукню, зарезервувати її на потрібну
                            Вам дату ( 30% від вартості прокату), решту (70%) оплачуєте в день, коли забираєте сукню та залишаєте заставу.
                        </span>
                    <span class="right-side__image"></span>
                </div>

                <div class="left-message">
                    <span class="left-side__image"></span>
                    <span class="left-side__message message">У мене вдома лежить сукня без діла. Ви могли б її викупити?</span>
                </div>

                <div class="right-message">
                            <span class="right-side__message message">Ми не викуповуємо сукні. Зате у нас є своя система прийому суконь,
                            злагоджена так щоб Ваша сукня працювала на Вас.</span>
                    <span class="right-side__image"></span>
                </div>

            </div>
            <!--div.ask-me__content-->
        </div>
        <!--div.ask-me-->

    </div><!--div.main-->
</section>
<!--section.content-->
<script>
    var left, right;

    $('.ask-me-add-but-left').click(function () {
        $('.ask-me-add-block-left').toggle();

        var left = $('.ask-me-add-text-left').val();

        $('.ask-me__content').append('<div class="left-message"><span class="left-side__image"></span>' +
                '<span class="left-side__message message">' + left + '</span>' + '</div>');
    });

    $('.ask-me-add-left').click(function () {
        $('.ask-me-add-block-left').toggle();
    });


    $('.ask-me-add-but-right').click(function () {
        $('.ask-me-add-block-right').toggle();

        var right = $('.ask-me-add-text-right').val();

        $('.ask-me__content').append('<div class="right-message"><span class="right-side__image"></span>' +
                '<span class="right-side__message message">' + right + '</span>' + '</div>');
    });

    $('.ask-me-add-right').click(function () {
        $('.ask-me-add-block-right').toggle();
    });


</script>