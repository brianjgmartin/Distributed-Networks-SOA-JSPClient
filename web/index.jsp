<%-- 
    Document   : index
    Created on : 09-Dec-2014, 15:01:07
    Author     : Brian Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <%-- end web service invocation --%><hr/>
    <body>
        <h1>Memory Catcher!</h1>
        <h3>Please Login Or register</h3>
        <form action="login.jsp" method="POST">
            First Name: <input type="text" name="username">
            <br />
            Last Name: <input type="text" name="password" />
            <input type="submit" value="Login" />
        </form>
<form action="register.jsp" method="POST">
            First Name: <input type="text" name="username">
            <br />
            Last Name: <input type="text" name="password" />
            <input type="submit" value="Register" />
        </form>



    </body>
</html>
