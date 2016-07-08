<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Princess's Club</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="/resources/img/like_pink.png">

    <!--pure_css-->
    <link rel="stylesheet" href="/resources/libraries/pure-min.css">

    <!--font_awesome-->
    <link rel="stylesheet" href="/resources/libraries/font-awesome.min.css">

    <!--slick_css-->
    <link rel="stylesheet" href="/resources/js/plugins/slick/slick.css">
    <link rel="stylesheet" href="/resources/js/plugins/slick/slick-theme.css">

    <!--global_style-->
    <link rel="stylesheet" href="/resources/css/global.css">

    <!--custom_style-->
    <link rel="stylesheet" href="/resources/css/index.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/dress-catalogue.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/accessories-catalogue.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/shirts-catalogue.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/beautyzone.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/project.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/contacts.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/rent-to.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/rent-for.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/ask-me.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/login.css">

    <!--custom-style-->
    <link rel="stylesheet" href="/resources/css/registration.css">

    <!--modernizr-->
    <script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>


    <script src="/resources/js/jquery-1.12.4.min.js"></script>

    <title><tiles:getAsString name="title"/></title>
</head>
<body>
<div><tiles:insertAttribute name="header"/></div>
<div><tiles:insertAttribute name="menu"/></div>
<div><tiles:insertAttribute name="body"/></div>
<div><tiles:insertAttribute name="footer"/></div>
<script>
    window.jQuery || document.write('<script src="/resources/js/vendor/jquery-1.11.2.js"><\/script>')
</script>

<!--slick_js-->
<script src="/resources/js/plugins/slick/slick.js"></script>

<!--global_script-->
<script src="/resources/js/global.js"></script>

<!--custom_script-->
<script src="/resources/js/index.js"></script>

<!--custom_script-->
<script src="/resources/js/project.js"></script>

</body>
</html>
