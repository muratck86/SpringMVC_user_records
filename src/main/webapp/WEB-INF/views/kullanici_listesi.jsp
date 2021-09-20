<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Kayıt Defteri-Liste</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourcesFolder/css/style.css">

    </head>

    <body class="d-flex flex-column h-100">

        <%--    Navbar--%>
        <script src="${pageContext.request.contextPath}/resourcesFolder/js/navbarScript.js"></script>
        <%--    Navbar--%>

    <h2 class="centered">Kullanıcı Listesi</h2>

        <div class="centered transp shadow border" style="padding: 10px">
            <table class="table table_success table-striped table-hover">
                <thead class="bg-color">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Id</th>
                        <th scope="col">İsim</th>
                        <th scope="col">Kan Grubu</th>
                        <th scope="col">Cep Telefonu</th>
                        <th scope="col">Adres</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${listUser}" var="user" varStatus="status">
                    <tr>
                        <td onclick="location.href='guncelle?id=${user.id}'">${status.index + 1}</td>
                        <td onclick="location.href='guncelle?id=${user.id}'">${user.id}</td>
                        <td onclick="location.href='guncelle?id=${user.id}'">${user.name}</td>
                        <td onclick="location.href='guncelle?id=${user.id}'">${user.bloodGroup}</td>
                        <td onclick="location.href='guncelle?id=${user.id}'">${user.telephone}</td>
                        <td onclick="location.href='guncelle?id=${user.id}'">${user.address}</td>
                        <td><a href="sil?id=${user.id}"
                               onclick="if(!(confirm('Silmek istediğinizden emin misini?'))) return false">Sil</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <nav aria-label="pagination" style="padding: 20px">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <a class="page-link">Önceki</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Sonraki</a>
                </li>
            </ul>
        </nav>


        <%--    Footer--%>
        <script src="${pageContext.request.contextPath}/resourcesFolder/js/footerScript.js"></script>
        <%--    Footer--%>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
                crossorigin="anonymous"></script>
    </body>
</html>