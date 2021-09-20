<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Kayıt Defteri-Yeni Kayıt</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourcesFolder/css/style.css">
</head>
<body class="d-flex flex-column h-100">

<%--    Navbar--%>
<script src="${pageContext.request.contextPath}/resourcesFolder/js/navbarScript.js"></script>
<%--    Navbar--%>

<div class="centered">
    <h2>Kayıt Formu</h2>
    <form:form action="kaydet" method="post" modelAttribute="user" class="row g-3 shadow border transp" cssStyle="padding: 15px">
        <form:hidden path="id"/>

        <div class="form-floating mb-3 col-12">
            <form:input type="text" class="form-control" id="floatingInp" placeholder="Adınız ve Soyadınız" path="name" required="true"/>
            <label for="floatingInp">Adınız ve Soyadınız</label>
        </div>

        <div class="form-floating mb-3 col-8 is-invalid">
            <form:input type="tel" class="form-control" id="inputPhone" path="telephone" pattern="05[0-9]{9}"
                        placeholder="05" value="05"/>
            <label for="inputPhone">Telefon Numaranız</label>
        </div>
        <div class="form-floating col-4">
            <form:select id="inputBlood" cssClass="form-select" path="bloodGroup" placeholder="Seçin.." required="true">
                <option selected disabled value="">Seçin...</option>
                <option>ARh-</option>
                <option>BRh-</option>
                <option>ABRh-</option>
                <option>0Rh-</option>
                <option>ARh+</option>
                <option>BRh+</option>
                <option>ABRh+</option>
                <option>0Rh+</option>
            </form:select>
            <label for="inputBlood">Kan Grubunuz</label>
        </div>

        <div class="form-floating col-12">
            <form:textarea path="address" name="address" cssClass="form-control" placeholder="Adresiniz..."
                           id="floatingTextarea2" style="height: 100px"/>
            <label for="floatingTextarea2">Adresiniz</label>
        </div>
        <div class="col-12">
            <button type="submit" class="btn bg-color buton" value="Kaydet"> Kaydet</button>
        </div>
    </form:form>
</div>

<%--    Footer--%>
<script src="${pageContext.request.contextPath}/resourcesFolder/js/footerScript.js"></script>
<%--    Footer--%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>