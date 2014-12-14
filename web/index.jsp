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
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    </head>


    <body class="jumbotron">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>

                    </button>
                    <a class="navbar-brand" href="#">Memory Catcher</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <form class="navbar-form navbar-right" role="form" action="login.jsp" method="POST">
                        <div class="form-group">
                            <input type="text" placeholder="Username" name="username" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="text" placeholder="Password" name="password" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-success">Sign in</button>
                    </form>
                </div><!--/.navbar-collapse -->
            </div>
        </nav>
        <div class="col-md-3"></div>

        <div class="col-md-6">
            <h1>Register </h1>
            <h3>Keep memories for Life</h3>
            <form class="form-horizontal" role="form" action="register.jsp" method = "POST">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="Username" name="username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-success">Sign up</button>
                    </div>
                </div>
            </form>

            <!-- Latest compiled and minified JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    </body>
</html>
