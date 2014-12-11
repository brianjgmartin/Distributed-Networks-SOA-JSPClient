<%-- 
    Document   : register
    Created on : 09-Dec-2014, 20:12:57
    Author     : Brian Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>  
        <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String username = request.getParameter("username");
	java.lang.String password = request.getParameter("password");
	// TODO process result here
	java.lang.String result = port.register(username, password);
	response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
