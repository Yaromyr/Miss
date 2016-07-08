<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header">

    <div class="header-shown pure-g">
        <div class="pure-u-1-12 left-arrow">
        </div>
        <!--div.left-arrow-->

        <div class="pure-u-16-24 pure-g-r header-content">

            <div class="pure-u-2-5 text-right address">
                <h5 class="pr-text-grey">WELCOME TO THE PRINCESS`S CLUB</h5>
                <p class="pr-text-magenta p1">м. Львiв, пл. Соборна,14
                    <br>ТЦ “Роксолана”,3 поверх</p>
            </div>
            <!--div.adaccessories-->

            <div class="pure-u-1-5 logo">
                <a href="${pageContext.request.contextPath}/home"><img class="logo-img" src="/resources/img/header-logo.png" alt="Princess's club"></a>
            </div>
            <!--div.logo-->

            <div class="pure-u-2-5 text-left contacts">
                <h5 class="pr-text-grey">ПРОКАТ, ПРОДАЖ <br> ВЕЧІРНІХ ТА КОКТЕЙЛЬНИХ СУКОНЬ</h5>
                <p class="pr-text-magenta p2 no-space">
                    <span><i class="pr-ico-tel"></i><a href="tel://+380981770188"> +38 098 177 01 88</a></span>
                    <!--<br>-->
                    <span><i class="pr-ico-tel"></i><a href="tel://+380632665580"> +38 063 266 55 80</a></span>
                </p>
            </div>
            <!--div.contacts-->
        </div>
        <!--div.header-content-->

        <div class="pure-u-1-12 pure-push-md-1-12 right-arrow">
        </div>
        <!--div.right-arrow-->

    </div>
    <!--div.header-shown-->


    <div class="header-hidden">
        <div class="pure-g text-center">
            <div class="pure-u-1-2 logo-hidden">
                <a href="${pageContext.request.contextPath}/home"><img class="logo-hidden-img" src="/resources/img/header-logo.png"
                                          alt="Princess's club"></a>
            </div>
            <!--div.logo-hidden-->
        </div>

        <div class="pure-g text-center">
            <div class="pure-u-1-2 address">
                <h5 class="pr-text-grey">WELCOME TO THE PRINCESS`S CLUB</h5>
                <p class="pr-text-magenta p1">м. Львiв, пл. Соборна,14
                    <br>ТЦ “Роксолана”,3 поверх</p>
            </div>

            <div class="pure-u-1-2 contacts">
                <h5 class="pr-text-grey">ПРОКАТ, ПРОДАЖ <br> ВЕЧІРНІХ ТА КОКТЕЙЛЬНИХ СУКОНЬ</h5>
                <p class="pr-text-magenta p2">
                    <span><i class="pr-ico-tel"></i><a href="tel://+380981770188">+38 098 177 01 88</a></span>
                    <br>
                    <span><i class="pr-ico-tel"></i><a href="tel://+380632665580">+38 063 266 55 80</a></span>
                </p>
            </div>
        </div>

    </div>
    <!--div.header-hidden-->

</header>
<!--header.header-->