<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<div class="container">
    <h1>Please fill in your information.</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <%--    UI Button    --%>
        <button type="submit" class="btn-53 mt-2 container-fluid">
            <div class="original">Register</div>
            <div class="letters">

                <span>R</span>
                <span>E</span>
                <span>G</span>
                <span>I</span>
                <span>S</span>
                <span>T</span>
                <span>E</span>
                <span>R</span>
            </div>
        </button>
        <%--    UI Button    --%>
    </form>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
