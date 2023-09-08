<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${user == null}">
    <div class="container">
        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-5 mb-4 border-bottom">
            <div class="col-md-3 mb-2 mb-md-0">
                <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">
                    <h1 class="fs-3">Dev Project Lister</h1>
                </a>
            </div>

            <div class="col-md-3 text-end">
                <button type="button" class="btn btn-outline-primary me-4  btn-lg">
                    <a href="/profile" class="text-decoration-none text-reset">Profile</a>
                </button>
                <button type="button" class="btn btn-outline-primary me-4 mx-3 btn-lg">
                    <a href="/login" class="text-decoration-none text-reset">Login</a>
                </button>
                <button type="button" class="btn btn-primary btn-lg">
                    <a href="/register" class="text-decoration-none text-reset">Sign Up!</a>
                </button>
            </div>
        </header>
    </div>
</c:if>
<c:if test="${user != null}">
    <div class="container">
        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-5 mb-4 border-bottom">
            <div class="col-md-3 mb-2 mb-md-0">
                <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">
                    <h1 class="fs-3">Dev Project Lister</h1>
                </a>
            </div>

            <div class="col-md-3 text-end">
                <button type="button" class="btn btn-outline-primary me-4  btn-lg">
                    <a href="/projects" class="text-decoration-none text-reset">Projects</a>
                </button>
                <button type="button" class="btn btn-outline-primary me-4 mx-3 btn-lg">
                    <a href="/profile" class="text-decoration-none text-reset">Profile</a>
                </button>
                <button type="button" class="btn btn-primary btn-lg">
                    <a href="/logout" class="text-decoration-none text-reset">Logout</a>
                </button>
<%--                <form action="/logout" method="post">--%>
<%--                    <button type="submit" class="btn btn-primary btn-lg">Logout</button>--%>
<%--                </form>--%>
            </div>
        </header>
    </div>
</c:if>

<%--<div class="container">--%>
<%--    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-5 mb-4 border-bottom">--%>
<%--        <div class="col-md-3 mb-2 mb-md-0">--%>
<%--            <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">--%>
<%--                <h1 class="fs-3">Dev Project Lister</h1>--%>
<%--            </a>--%>
<%--        </div>--%>

<%--        <div class="col-md-3 text-end">--%>
<%--            <button type="button" class="btn btn-outline-primary me-4  btn-lg">Projects</button>--%>
<%--            <button type="button" class="btn btn-outline-primary me-4 mx-3 btn-lg">Login</button>--%>
<%--            <button type="button" class="btn btn-primary btn-lg">Sign-up</button>--%>
<%--        </div>--%>
<%--    </header>--%>
<%--</div>--%>
