<%--
  Created by IntelliJ IDEA.
  User: Yulian Bulbuk
  Date: 30.06.2016
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <title><tiles:getAsString name="title"/></title>
</head>
<body>
<div><tiles:insertAttribute name="header"/></div>
<div><tiles:insertAttribute name="menu"/></div>
<div><tiles:insertAttribute name="body"/></div>
<div><tiles:insertAttribute name="footer"/>
</body>
</html>