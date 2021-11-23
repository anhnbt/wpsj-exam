<%-- 
    Document   : register
    Created on : Nov 23, 2021, 7:23:57 PM
    Author     : Nguyen Ba Tuan Anh <anhnbt.it@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Form</title>
    </head>
    <body>
        <h1>Register Form!</h1>
        <form method="POST" action="new.jsp">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <label for="username">Username:</label>
                        </td>
                        <td>
                            <input type="text" name="username" id="username" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="password">Password:</label>
                        </td>
                        <td>
                            <input type="password" name="password" id="password" required>
                        </td>
                    </tr>
                        <td>
                            <label for="email">Email:</label>
                        </td>
                        <td>
                            <input type="email" name="email" id="email" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="telephone">Phone:</label>
                        </td>
                        <td>
                            <input type="text" name="telephone" id="telephone" required>
                        </td>
                    </tr>
                    <tr>
                    <td>
                        <label for="fullname">Full name:</label>
                    </td>
                    <td>
                        <input type="text" name="fullname" id="fullname" required>
                    </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <button type="submit">Register</button>
                            <button type="reset">Cancel</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
