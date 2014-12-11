<%-- 
    Document   : invite
    Created on : 11-Dec-2014, 14:01:43
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
        <h1>You Have an invitation to share memories with  
    <%
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	// TODO process result here
	java.lang.String result = port.viewInviteSender();
	out.println(result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    
 </h1>
        
    </body>
</html>
