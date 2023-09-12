<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<c:if test="${user == null}">--%>
<%--    <div class="container">--%>
<%--        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between border-bottom">--%>
<%--            <div class="col-md-3 mb-2 mb-md-0">--%>
<%--                <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">--%>
<%--                    <h1 class="fs-3">Dev Project Lister</h1>--%>
<%--                </a>--%>
<%--            </div>--%>

<%--            <div class="row col-md-4 text-end m-3">--%>
<%--                    <form action="/projects" method="GET">--%>
<%--                        <input type="text" name="query" placeholder="Search projects...">--%>
<%--                        <button type="submit">Search</button>--%>
<%--                    </form>--%>
<%--                <div class="col">--%>
<%--                    <button type="button" class="btn btn-outline-primary btn-md">--%>
<%--                        <a href="/profile" class="text-decoration-none text-reset">Profile</a>--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--                <div class="col">--%>
<%--                    <button type="button" class="btn btn-outline-primary btn-md">--%>
<%--                        <a href="/login" class="text-decoration-none text-reset">Login</a>--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--                <div class="col">--%>
<%--                    <button type="button" class="btn btn-primary btn-md">--%>
<%--                        <a href="/register" class="text-decoration-none text-reset">Register</a>--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </header>--%>
<%--    </div>--%>
<%--</c:if>--%>
<%--<c:if test="${user != null}">--%>
<%--    <div class="container">--%>
<%--        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between border-bottom">--%>
<%--            <div class="col-md-3 mb-2 mb-md-0">--%>
<%--                <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">--%>
<%--                    <h1 class="fs-3">Dev Project Lister</h1>--%>
<%--                </a>--%>
<%--            </div>--%>

<%--            <div class="row col-md-4 text-end m-3">--%>
<%--                <div class="col">--%>
<%--                    <button type="button" class="btn btn-outline-primary me-4  btn-md">--%>
<%--                        <a href="/projects" class="text-decoration-none text-reset">Projects</a>--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--                <div class="col">--%>
<%--                    <button type="button" class="btn btn-outline-primary me-4 mx-3 btn-md">--%>
<%--                        <a href="/profile" class="text-decoration-none text-reset">Profile</a>--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--                <div class="col">--%>
<%--                    <button type="button" class="btn btn-primary btn-md">--%>
<%--                        <a href="/logout" class="text-decoration-none text-reset">Logout</a>--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </header>--%>
<%--    </div>--%>
<%--</c:if>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${user == null}">
    <nav class="navbar navbar-dark bg-dark" aria-label="Dark offcanvas navbar">
        <div class="container-fluid">
            <div class="py-4">
                <a class="navbar-brand" href="/">Dev Project Lister</a>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbarDark" aria-controls="offcanvasNavbarDark"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbarDark"
                 aria-labelledby="offcanvasNavbarDarkLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel">Offcanvas</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/projects">Projects</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">
                                Profile
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/profile">Profile</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="/login">Login</a></li>
                                <li><a class="dropdown-item" href="/register">Register</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex mt-3" role="search" action="/projects" method="get">
                        <input class="form-control me-2" type="search" name="query" placeholder="Search projects..."
                               aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </div>
    </nav>
</c:if>
<c:if test="${user != null}">
    <nav class="navbar navbar-dark bg-dark" aria-label="Dark offcanvas navbar">
        <div class="container-fluid">
                <a class="navbar-brand" href="/">Dev Project Lister</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbarDark" aria-controls="offcanvasNavbarDark"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbarDark"
                 aria-labelledby="offcanvasNavbarDarkLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel">Offcanvas</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/projects">Projects</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">
                                Profile
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/profile">Profile</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="/logout">Logout</a></li>
<%--                                <li><a class="dropdown-item" href="/register">Register</a></li>--%>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex mt-3" role="search" action="/projects" method="get">
                        <input class="form-control me-2" type="search" name="query" placeholder="Search projects..."
                               aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </div>
    </nav>
</c:if>