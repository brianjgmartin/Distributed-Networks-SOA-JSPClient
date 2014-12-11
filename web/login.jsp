<%-- 
    Document   : newjsp
    Created on : 09-Dec-2014, 15:14:40
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
              <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String username = request.getParameter("username");
	java.lang.String password = request.getParameter("password");
	// TODO process result here
        if(port.login(username,password)== true){
           response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");  
        }
        else{
            response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/error.jsp");  
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    </body>
</html>
