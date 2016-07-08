<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 06.07.2016
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="online-ordering-form">
    <form>
        <input type="text" placeholder="Ім'я" class="input-name">
        <input type="text" placeholder="Прізвище" class="input-surname">
        <br>
        <input type="text" placeholder="Час" class="input-time">
        <input type="text" placeholder="Дата" class="input-date">

        <hr class="pr-pink-line">

        <button class="send-button">ВІДПРАВИТИ</button>

    </form>
</div>

<section class="content beautyzone-page">
    <div class="main pure-g">

        <aside class="pure-u-1-6 side-nav white-space" id="side_nav">

            <!--<div class="pr-menu-but text-center" id="menu_but">меню</div>-->

            <div class="side-block">
                <h2 class="pr-text-pink">зонаКРАСИ</h2>
            </div>

            <div class="side-block">

                <a href="#" class="pr-text-magenta">Послуги</a>
                <br>

                <a href="#" class="pr-text-magenta">Прайс</a>
                <br>

                <a href="#" class="pr-text-magenta">Косметика</a>
                <br>

                <a href="#" class="pr-text-magenta">Відгуки клієнтів</a>
                <br>

                <a href="#" class="pr-text-magenta">Галерея</a>
                <br>

                <a href="#" class="pr-text-magenta">Акції</a>
            </div>
        </aside><!--aside.side-nav-->

        <div class="pure-u-5-6 beautyzone-image">
            <img src="/resources/img/beautyzone-bcg.jpg" alt="">
            <div class="online-ordering">
                <span class="online-phone"><a class="pr-text-magenta" href="tel://+380981770188">+38 098 177 01 88</a></span>
                <br>
                <span class="online-phone"><a class="pr-text-magenta" href="tel://+380632665580">+38 063 266 55 80</a></span>
                <hr class="pr-pink-line">
                <button class="online-button">ON-LINE ЗАПИС</button>
            </div>
        </div>
    </div>
</section>
<!--section.content-->
