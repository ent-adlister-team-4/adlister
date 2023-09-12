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
<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
        <div class="col-lg-7 text-center text-lg-start">
            <h1 class="display-4 fw-bold lh-1 text-body-emphasis mb-3">Welcome to Dev Project Lister</h1>
            <p class="col-lg-10 fs-4">Login or register to show off your portfolio, connect with light minded
                developers, and expand your knowledge in the forever growing industry!</p>
        </div>
        <div class="col-md-10 mx-auto col-lg-5">
            <form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" action="/login" method="POST">
                <div class="form-floating mb-3 form-group">
                    <%--                        <label for="username">Username</label>--%>
                    <input id="username" name="username" class="form-control" type="text" value="username">
                </div>
                <div class="form-floating mb-3 form-group">
                    <%--                        <label for="password">Password</label>--%>
                    <input id="password" name="password" class="form-control" type="password" value="password">
                </div>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <%--    UI Button    --%>
                <button type="submit" class="btn-53 container-fluid">
                    <div class="original">Sign In</div>
                    <div class="letters">

                        <span>S</span>
                        <span>I</span>
                        <span>G</span>
                        <span>N</span>
                        <span>&nbsp;</span>
                        <span>I</span>
                        <span>N</span>
                    </div>
                </button>
                <%--    UI Button    --%>
                <hr class="my-4">
                <a href="/register">
                    <small class="text-body-secondary">New here? Click here to create an account!</small>
                </a>
            </form>
        </div>
    </div>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
