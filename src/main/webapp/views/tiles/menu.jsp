<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<nav class="navigation">

    <div class="hidden-menu">
        <ul class="pure-g">
            <li class="pure-u-1-12 nav-icon">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </li>
            <li class="pure-u-1-3 pr-social"><a href="https://vk.com/studio4princess" target="_blank"><i
                    class="pr-ico-vk"></i></a>
                <a href="https://www.facebook.com/studio4princess/" target="_blank"><i class="pr-ico-fb"></i></a>
                <a href="https://www.instagram.com/miss_princess_studio/" target="_blank"><i
                        class="pr-ico-inst"></i></a>
            </li>

            <sec:authorize access="isAnonymous()">
                <li class="pure-u-1-6">
                    <a href="/loginpage">
                        <button class="pr-input pr-enter">Вхід</button>
                    </a>
                </li>
            </sec:authorize>

            <sec:authorize access="isAnonymous()">
                <li class="pure-u-1-4">
                    <a href="/registration">
                        <button class="pr-input pr-reg">Реєстрація</button>
                    </a>
                </li>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <li class="pure-u-1-4">
                    <form:form method="post" action="/logout">
                        <button class="pr-input pr-reg" type="submit">Вихід</button>
                    </form:form>

                </li>
            </sec:authorize>
        </ul>

        <ul class="menu-second pure-g-r">
            <li><a href="${pageContext.request.contextPath}/get/all/commodities/dresses">СУКНІ</a></li>
            <li><a href="${pageContext.request.contextPath}/get/all/commodities/embroideries">ВИШИВАНКИ</a></li>
            <li><a href="${pageContext.request.contextPath}/get/all/commodities/accessories">АКСЕСУАРИ</a></li>
            <li><a href="${pageContext.request.contextPath}/view/beauty-zone">зонаКРАСИ</a></li>
            <li><a href="${pageContext.request.contextPath}/404">ФОТОсесія</a></li>
            <li><a href="${pageContext.request.contextPath}/view/contacts">Контакти</a></li>
            <li><a href="${pageContext.request.contextPath}/view/project">Про проект</a></li>

            <li><a href="#">Як взяти сукню в прокат</a></li>
            <li><a href="#">Як здати, свою, сукню в прокат</a></li>

            <li class="pr-news"><a href="${pageContext.request.contextPath}/404">НОВИНИ</a></li>

            <li><a href="#">ASKme</a></li>

            <li class="search">
                    <span class="search-wrap">
                        <input style="padding: 0 0 3px 5px;" type="search" class="search" placeholder="пошук">
                        <button type="submit" class="search-but">&#128270;</button>
                    </span>
            </li>
        </ul>
    </div>

    <div class="shown-menu">
        <ul class="menu">
            <li class="pure-u-1-8"><a href="${pageContext.request.contextPath}/get/all/commodities/dresses">СУКНІ</a>
            </li>
            <li class="pure-u-1-8"><a href="${pageContext.request.contextPath}/get/all/commodities/embroideries">ВИШИВАНКИ</a>
            </li>
            <li class="pure-u-1-8"><a href="${pageContext.request.contextPath}/get/all/commodities/accessories">АКСЕСУАРИ</a>
            </li>
            <li class="pure-u-1-8"><a href="${pageContext.request.contextPath}/view/beauty-zone">зонаКРАСИ</a></li>
            <li class="pure-u-1-8"><a href="${pageContext.request.contextPath}/404">ФОТОсесія</a></li>
            <li class="pure-u-1-8"><a href="${pageContext.request.contextPath}/view/contacts">Контакти</a></li>
        </ul><!--ul.menu-->
    </div>

    <div class="pink-menu">
        <ul class="additional-menu pure-g">
            <li class="pure-u-3-24 pr-social pure-hidden-phone"><a href="https://vk.com/studio4princess"
                                                                   target="_blank"><i class="pr-ico-vk"></i></a>
                <a href="https://www.facebook.com/studio4princess/" target="_blank"><i class="pr-ico-fb"></i></a>
                <a href="https://www.instagram.com/miss_princess_studio/" target="_blank"><i
                        class="pr-ico-inst"></i></a>
            </li>

            <sec:authorize access="isAnonymous()">
                <li class="pure-u-1-24">
                    <a href="${pageContext.request.contextPath}/loginpage">
                        <button class="pr-input pr-enter">Вхід</button>
                    </a>
                </li>
            </sec:authorize>

            <sec:authorize access="isAnonymous()">
                <li class="pure-u-2-24">
                    <a href="${pageContext.request.contextPath}/registration">
                        <button class="pr-input pr-reg">Реєстрація</button>
                    </a>
                </li>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <li style="width: 5%" class="pure-u-1-4">
                    <form:form method="post" action="/logout">
                        <button class="pr-input" type="submit">Вихід</button>
                    </form:form>

                </li>
            </sec:authorize>
            <li class="pure-u-2-24"><a href="${pageContext.request.contextPath}/view/project">Про проект</a></li>

            <li class="pure-u-4-24"><a href="${pageContext.request.contextPath}/view/rent/for">Як взяти сукню в
                прокат</a></li>
            <li class="pure-u-5-24"><a href="${pageContext.request.contextPath}/view/rent/to">Як здати, свою, сукню в
                прокат</a></li>

            <li class="pure-u-2-24 pr-news"><a href="${pageContext.request.contextPath}/404">НОВИНИ</a></li>

            <li class="pure-u-2-24"><a href="${pageContext.request.contextPath}/view/ask">ASKme</a></li>

            <li class="pure-u-3-24">
                    <span class="search-wrap">
                        <input type="search" class="search" placeholder="пошук">
                        <button type="submit" class="search-but">&#128270;</button>
                    </span>
            </li>
        </ul>
    </div>

</nav>
<!--nav.navigation-->