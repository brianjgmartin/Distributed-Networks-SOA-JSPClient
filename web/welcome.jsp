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
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-2.1.1.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#myTab li:eq(1) a").tab('show');
            });
        </script>
        <title>JSP Page</title>
    </head>    

    <body class="jumbotron">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>

                    </button>
                    <a class="navbar-brand" href="#">Welcome <%
                        try {
                            org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                            org.me.memory.MemoryWS port = service.getMemoryWSPort();
                            // TODO process result here
                            java.lang.String result = port.getUser();
                            out.println(result);
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                        %></a>
                </div>


                <div id="navbar" class="navbar-collapse collapse">
                    <form class="navbar-form navbar-right" role="form" action="http://localhost:8080/MemoryAppJSPClient/index.jsp">

                        <button type="submit" class="btn btn-danger">Sign Out</button>

                    </form>

                </div><!--/.navbar-collapse -->
            </div>
        </nav>
        <br>
        <br>
        <br>


        <div class="col-md-1"></div>


        <div class="col-md-10">
            <ul id="myTab" class="nav nav-tabs">

                <!------------------------Memory Dropdown ----------------------->
                <li class="dropdown">
                    <a href="#" id="myTabDrop1" class="dropdown-toggle" 
                       data-toggle="dropdown">
                        Memories
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#addmemory" tabindex="-1" data-toggle="tab">Add Memory</a></li>
                        <li><a href="#deletememory" tabindex="-1" data-toggle="tab">Delete Memory</a></li>
                        <li><a href="#viewmemories" tabindex="-1" data-toggle="tab">View Memories</a></li>
                        <li><a href="#sharememories" tabindex="-1" data-toggle="tab">Share Memories</a></li>
                    </ul>
                </li>
                <!-----------------------------End Memory Dropdown--------------------->

                <!--s--------------------------Add Resource Dropdown ------------------>
                <li class="dropdown">
                    <a href="#" id="myTabDrop1" class="dropdown-toggle" 
                       data-toggle="dropdown">
                        Resources
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#addresource" tabindex="-1" data-toggle="tab">Add Resource</a></li>
                        <li><a href="#deleteresource" tabindex="-1" data-toggle="tab">Delete Resource</a></li>
                        <li><a href="#viewresources" tabindex="-1" data-toggle="tab">View Resource</a></li>
                    </ul>
                </li>
                <!--------------------------------End Resources----------------------->

                <!--------------------------------Start Friends----------------------->
                <li class="dropdown">
                    <a href="#" id="myTabDrop1" class="dropdown-toggle" 
                       data-toggle="dropdown">Friends 
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#viewUsers" tabindex="-1" data-toggle="tab">View Users</a></li>
                        <li><a href="#sendInvite" tabindex="-1" data-toggle="tab">Send Invite</a></li>
                        <li><a href="#viewInvite" tabindex="-1" data-toggle="tab">View Invites</a></li>


                    </ul>
                </li>

                <!--------------------------------End Friends----------------------->

                <!--------------------------------Start Points----------------------->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class=""><a href="#viewpoints"  role="tab" data-toggle="tab">View Points</a></li>
                    <li role="presentation" class=""><a href="#transferpoints"  role="tab" data-toggle="tab">Transfer Points</a></li>
                </ul>
                <!----------------------------End Points________-->

                <div id="myTabContent" class="tab-content">


                    <!--   <div class="tab-pane fade in active" id="home">
                          
                       </div>
                       <div class="tab-pane fade" id="ios">
                          <p>iOS is a mobile operating system developed and distributed by Apple 
                             Inc. Originally released in 2007 for the iPhone, iPod Touch, and 
                             Apple TV. iOS is derived from OS X, with which it shares the 
                             Darwin foundation. iOS is Apple's mobile version of the 
                             OS X operating system used on Apple computers.</p>
                       </div>-->

                    <!------------------------Start Memories---------------->

                    <div class="tab-pane fade" id="addmemory">
                        <div class="col-md-11"></div>
                        <div class="col-md-1"></div>

                        <h3>Keep memories for Life</h3>
                        <form class="form-horizontal" role="form" action="welcome.jsp" method = "POST">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Memory</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="Amem" placeholder="Add your memory here" name="add_memory">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-success">Add memory</button>
                                </div>
                            </div>
                        </form>
                    </div>


                    <div class="tab-pane fade" id="deletememory">
                        <div class="col-md-11"></div>
                        <div class="col-md-1"></div>

                        <h3>Bad memories can be forgotten</h3>
                        <form class="form-horizontal" role="form" action="welcome.jsp" method ="POST">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Memory</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="Amem" placeholder="Add your memory here" name="delete_memory">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger">Erase memory</button>
                                </div>
                            </div>
                        </form> 
                    </div>

                    <!---------------View Memories------------------------------->

                    <div class="tab-pane fade" id="viewmemories">
                        <div class="col-md-11"></div>
                        <div class="col-md-1"></div>

                        <h3> Memories</h3>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-8">
                            <%
                                try {
                                    org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                                    org.me.memory.MemoryWS port = service.getMemoryWSPort();
                                    // TODO process result here
                                    java.lang.String result = port.viewMemories();
                                    if (result.equals("")) {
                                        out.println("You are void of Memory \n");
                                        out.println("You May Have to refresh PAGE !!!!!");
                                    } else {
                                        out.println(result);
                                    }
                                } catch (Exception ex) {
                                    // TODO handle custom exceptions here
                                }
                            %>
                        </div>
                    </div>
                    <!---------------Share Memories------------------------------->
                    <div class="tab-pane fade" id="sharememories">
                        <div class="col-md-11"></div>
                        <div class="col-md-1"></div>

                        <h3>Share A memory with a friend</h3>
                        <form class="form-horizontal" role="form" action="welcome.jsp" method = "POST">
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Memory</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Add your memory here" name="addAmemory">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Friend</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Enter your friends name  here" name="friendsName">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-success">Share Memory</button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <!---------------------------------------------------------------------->
                    <div class="tab-pane fade" id="deletememory">
                        <div class="col-md-11"></div>
                        <div class="col-md-1"></div>

                        <h3>Bad memories can be forgotten</h3>
                        <form class="form-horizontal" role="form" action="welcome.jsp" method ="POST">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Memory</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="Amem" placeholder="Add your memory here" name="delete_memory">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger">Erase memory</button>
                                </div>
                            </div>
                        </form> 
                    </div>

                    <!---------------------------End Memories Tab------------------>

                    <!---------------------------Start Resource Tab------------------>

                    <div class="tab-pane fade" id="addresource">

                        <h3>Add Resource To Your memories</h3>
                        <form class="form-horizontal" role="form" action="welcome.jsp" method = "POST">
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Memory</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="Please enter the memory you wish to attach your resource to" name="rmemory">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Resource</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Please enter your resource here" name="addresource">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-success">Add Resource</button>
                                </div>
                            </div>
                        </form>

                    </div>

                    <div class="tab-pane fade" id="deleteresource">

                        <h3>Delete A Resource</h3>
                        <form class="form-horizontal" role="form" action="welcome.jsp" method = "POST">
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Resource</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Please enter the resource decription here" name="delete_resource">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger">Delete Resource</button>
                                </div>
                            </div>
                        </form>

                    </div>
                    <!---------------------------End Resource Tab------------------>

                    <!---------------------------Start Friends Tab------------------>
                    <div class="tab-pane fade" id="viewUsers">
                        <h3>Users</h3>    
                        <%
                            try {
                                org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                                org.me.memory.MemoryWS port = service.getMemoryWSPort();
                                // TODO process result here
                                java.lang.String result = port.viewUsers();

                                out.println("Memory Catcher Users :   " + result);
                            } catch (Exception ex) {
                                // TODO handle custom exceptions here
                            }
                        %>




                    </div>

                    <div class="tab-pane fade" id="sendInvite">

                        <h3>Invite A friend To share Memories</h3>
                        <form class="form-horizontal" role="form" action="welcome.jsp" method = "POST">
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Friend</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Please enter Friends name here" name="friend">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-success">Send Invite</button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="viewInvite" name="test">
                        <div class="col-sm-offset-2 col-sm-8">
                            <br>
                            <br>
                            <br>
                            <form class="form-horizontal" role="form"  method="POST">
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-8">

                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Check Invites
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Invitations</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <%
                                                            try {
                                                                org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                                                                org.me.memory.MemoryWS port = service.getMemoryWSPort();
                                                                // TODO process result here
                                                                boolean result = port.viewInvites();
                                                                if (result) {
                                                                    out.println("You Have an Invite from");
                                                                } else {
                                                                    out.println("Sorry No Invites today");

                                                                }
                                                                //out.println("Result = "+result);
                                                            } catch (Exception ex) {
                                                                // TODO handle custom exceptions here
                                                            }

                                                            try {
                                                                org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                                                                org.me.memory.MemoryWS port = service.getMemoryWSPort();
                                                                // TODO process result here
                                                                java.lang.String result1 = port.viewInviteSender();
                                                                boolean result = port.viewInvites();
                                                                if (result1 != null && result) {
                                                                    out.println(result1);
                                                                }
                                                            } catch (Exception ex) {
                                                                // TODO handle custom exceptions here
                                                            }
                                                        %>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <form class="navbar-form navbar-right" role="form" action=<%
                                                            try {
                                                                org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                                                                org.me.memory.MemoryWS port = service.getMemoryWSPort();
                                                                port.acceptInvite();
                                                                response.flushBuffer();
                                                                response.resetBuffer();
                                                                response.setIntHeader("Refresh", 5);
                                                                response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");

                                                            } catch (Exception ex) {
                                                                // TODO handle custom exceptions here
                                                            } %> >
                                                            <button type="button" class="btn btn-success" data-dismiss="modal" name="test">Accept</button>


                                                        </form>
                                                        <form class="navbar-form navbar-right" role="form" action="http://localhost:8080/MemoryAppJSPClient/welcome.jsp">

                                                            <button type="submit" class="btn btn-danger">Close</button>

                                                        </form>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                        </div>
                    </div>
                    <!------------------------------------Start Points tab------>
                    <div class="tab-pane fade" id="viewpoints">

                        <h3>Your points </h3>


                        <%
                            try {
                                org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                                org.me.memory.MemoryWS port = service.getMemoryWSPort();
                                // TODO process result here
                                java.lang.Integer result = port.viewPoints();
                                out.println("Your current points are " + result);
                                response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");
                            } catch (Exception ex) {
                                // TODO handle custom exceptions here
                            }
                        %>


                    </div>
                    <!---------------------- End Points  tab----------->

                    <!---------------------------Start Transfer Points------------>
                    <div class="tab-pane fade" id="transferpoints">
                        <div class="col-md-11"></div>
                        <div class="col-md-1"></div>

                        <h3>Transfer Points to A friend</h3>
                        <form class="form-horizontal" role="form" action="welcome.jsp" method = "POST">
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Points</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="Amem" placeholder="Enter The amount of points you would like to transfer" name="points">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Friend</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="Amem" placeholder="Enter The Username of friend you would like to transfer points to" name="username">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger">Transfer Points</button>
                                </div>
                            </div>
                        </form>
                    </div>


                    <!---------------------------End Transfer Points------------>
                </div>
                <!----------------------------------End Content Tab ----------------->
                <div class="col-md-2"></div>






                <%
                    if (request.getParameter("add_memory") != null) {
                        try {
                            org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                            org.me.memory.MemoryWS port = service.getMemoryWSPort();
                            // TODO initialize WS operation arguments here
                            java.lang.String memory = request.getParameter("add_memory");
                            port.addMemory(memory);
                            response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                    }
                %>

                <%
                    if (request.getParameter("delete_memory") != null) {
                        try {
                            org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                            org.me.memory.MemoryWS port = service.getMemoryWSPort();
                            // TODO initialize WS operation arguments here
                            java.lang.String memory = request.getParameter("delete_memory");

                            // TODO process result here
                            port.delete(memory);
                            response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");
                            //	out.println("Result = "+result);
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                    }
                %>


                <%
                    if (request.getParameter("rmemory") != null && request.getParameter("addresource") != null) {
                        try {

                            org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                            org.me.memory.MemoryWS port = service.getMemoryWSPort();
                            // TODO initialize WS operation arguments here
                            java.lang.String memory = request.getParameter("rmemory");
                            java.lang.String resource = request.getParameter("addresource");
                            port.addResource(memory, resource);
                            response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                    }
                %>

                <%
                    if (request.getParameter("delete_resource") != null) {
                        try {
                            org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                            org.me.memory.MemoryWS port = service.getMemoryWSPort();
                            // TODO initialize WS operation arguments here
                            java.lang.String resource = request.getParameter("delete_resource");
                            port.deleteResource(resource);
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                    }
                %>



                <%
                    if (request.getParameter("friend") != null) {
                        try {
                            org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                            org.me.memory.MemoryWS port = service.getMemoryWSPort();
                            // TODO initialize WS operation arguments here
                            java.lang.String friendUsername = request.getParameter("friend");;
                            port.sendInvite(friendUsername);
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                    }
                %>





                <%
                    if (request.getParameter("friendsName") != null && request.getParameter("addAmemory") != null) {
                        try {
                            org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                            org.me.memory.MemoryWS port = service.getMemoryWSPort();
                            // TODO initialize WS operation arguments here
                            java.lang.String memory = request.getParameter("addAmemory");
                            java.lang.String username = request.getParameter("friendsName");
                            port.shareMemory(memory, username);
                            response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                    }
                %>    
                <%
                    if (request.getParameter("points") != null && request.getParameter("username") != null) {
                        try {
                            org.me.memory.MemoryWS_Service service = new org.me.memory.MemoryWS_Service();
                            org.me.memory.MemoryWS port = service.getMemoryWSPort();
                            // TODO initialize WS operation arguments here
                            java.lang.String points = request.getParameter("points");
                            int mypoints = Integer.parseInt(points);
                            java.lang.String username = request.getParameter("username");
                            port.transferPoints(mypoints, username);
                            response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");
                            response.sendRedirect("http://localhost:8080/MemoryAppJSPClient/welcome.jsp");
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                    }
                %>







                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

                </body>  

                </html>                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             