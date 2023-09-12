<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1>Please Log In</h1>
    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <%--    UI Button        --%>
        <div class="container-fluid">
            <button type="submit" class="btn-53 container-fluid" value="Log In">
                <div class="original">Log In</div>
                <div class="letters">

                    <span>L</span>
                    <span>O</span>
                    <span>G</span>
                    <span>&nbsp;</span>
                    <span>I</span>
                    <span>N</span>
                </div>
            </button>
        </div>
        <%--    UI Button        --%>
    </form>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
