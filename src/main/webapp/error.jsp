<%-- 
    Document   : error
    Created on : Nov 23, 2021, 6:41:37 PM
    Author     : Nguyen Ba Tuan Anh <anhnbt.it@gmail.com>
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <h1>Something went wrong, please try again!</h1>
        <%-- exception.printStackTrace(response.getWriter()); --%>
        <p>Error details: <strong><% out.println(exception.getMessage()); %></strong></p>
        <p>Go to <a href="index.jsp">Home page</a></p>
    </body>
</html>
