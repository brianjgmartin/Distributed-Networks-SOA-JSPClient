<%-- 
    Document   : welcome
    Created on : 09-Dec-2014, 19:51:51
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
         <H1>Submitting Text Fields</H1>
        <form action="welcome.jsp" method="POST">
             Add A Memory: <input type="text" name="memory">
            <br />
            
            <input type="submit" value="Submit" />
        </form>
         <form action="welcome.jsp" method="POST">
             Delete A Memory: <input type="text" name="memory_delete">
            <br />
            
            <input type="submit" value="Delete" />
        </form>
         
         <form action="welcome.jsp" method="POST">
             Please enter the Memory you want to add your resource too <input type="text" name="memory">
             Please enter your resource <input type="text" name="add_resource">
            <br />
            
            <input type="submit" value="add_resource" />
        </form>
         <form action="welcome.jsp" method="POST">
             Please enter the Friend you would like to invite: <input type="text" name="friendUsername">
             
            <br />
            
            <input type="submit" value="Invite Friend" />
        </form>
        
    <%
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	// TODO process result here
	java.lang.String result = port.getUser();
	out.println("Welcome = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    
    
    <%
    if (request.getParameter("memory") != null){
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String memory = request.getParameter("memory");
	port.addMemory(memory);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }}
    %>
  
    <%
       if (request.getParameter("memory_delete") != null  ){
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String memory = request.getParameter("memory_delete");
	// TODO process result here
	java.lang.String result = port.delete(memory);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
       }
    %>
  
    
    <%
           if(request.getParameter("memory") !=null && request.getParameter("add_resource") !=null){
    try {
    
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String memory = request.getParameter("memory");
	java.lang.String resource = request.getParameter("add_resource");
	port.addResource(memory, resource);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    }
    %>
     <%-- start web service invocation --%><hr/>
         <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	// TODO process result here
	java.lang.String result = port.getUser();
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

     
    <%
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	// TODO process result here
	java.lang.String result = port.viewMemories();
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>


        <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	// TODO process result here
	boolean result = port.viewInvites();
        if(result){
            response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/invite.jsp");
        }
	//out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    <%-- start web service invocation --%><hr/>
    <%
    if(request.getParameter("friendUsername") != null){
    try {
	org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
	org.me.memory.MemoryWS port = service.getMemoryWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String friendUsername = request.getParameter("friendUsername");
	port.sendInvite(friendUsername);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    }
    %>
    <%-- end web service invocation --%><hr/>


    </body>  

</html>
