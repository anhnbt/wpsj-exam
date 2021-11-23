<%-- 
    Document   : new
    Created on : Nov 23, 2021, 7:27:23 PM
    Author     : Nguyen Ba Tuan Anh <anhnbt.it@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <body>
        <h1>You have registered successfully!</h1>
        <c:set var="username" value="${param.username}" scope="page"/>
        <c:set var="password" value="${param.password}" scope="page"/>
        <c:set var="email" value="${param.email}" scope="page"/>
        <c:set var="telephone" value="${param.telephone}" scope="page"/>
        <c:set var="fullname" value="${param.fullname}" scope="page"/>
        <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3308/wpsj_practical" 
                           user="anhnbt" 
                           password="KhoaiTay@2019"
                           var="conn"/>
        <sql:update var="rowsAffected" dataSource="${conn}">
            INSERT INTO registertbl (username, password, email, telephone, fullname) VALUES (?, ?, ?, ?, ?)
            <sql:param value="${fn:trim(username)}"/>
            <sql:param value="${fn:trim(password)}"/>
            <sql:param value="${fn:trim(email)}"/>
            <sql:param value="${fn:trim(telephone)}"/>
            <sql:param value="${fn:trim(fullname)}"/>
        </sql:update>
        <c:choose>
            <c:when test="${rowsAffected > 0}">
                <p>Insert new student into database successfully!</p>
                <p>Go to <a href="showclass.jsp">Show class</a></p>
            </c:when>    
            <c:otherwise>
                <%response.sendRedirect("error.jsp");%>
            </c:otherwise>
        </c:choose>
    </body>
</html>
