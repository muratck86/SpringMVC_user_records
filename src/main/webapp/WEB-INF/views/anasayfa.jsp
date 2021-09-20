<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="tr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Kayıt Defteri-Anasayfa</title>
        <script src="${pageContext.request.contextPath}/resourcesFolder/js/csi.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourcesFolder/css/style.css">
    </head>

    <body class="d-flex flex-column h-100">

    <%--    Navbar--%>
    <div data-include="${pageContext.request.contextPath}/resourcesFolder/html/navbar.html"></div>
<%--    <script src="${pageContext.request.contextPath}/resourcesFolder/js/navbarScript.js"></script>--%>
    <%--    Navbar--%>

        <h1 class="centered">Kayıt Defteri Anasayfa</h1>

        <%--    Footer--%>
        <script src="${pageContext.request.contextPath}/resourcesFolder/js/footerScript.js"></script>
        <%--    Footer--%>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
                crossorigin="anonymous"></script>
    </body>
</html>
