<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Kullanıcı Listesi</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
<h1 align="center">Kullanıcı Listesi</h1>
<h3 align="center"><a href="./">Anasayfa</a></h3>


<div align="center">
    <table border="1">
        <tr>
            <th>Sıra</th>
            <th>Id</th>
            <th>İsim</th>
            <th>Kan Grubu</th>
            <th>Cep Telefoun</th>
            <th>Adres</th>
            <th>İşlem</th>
        </tr>
        <c:forEach items="${listUser}" var="user" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.bloodGroup}</td>
                <td>${user.telephone}</td>
                <td>${user.address}</td>
                <td><a href="guncelle?id=${user.id}">Guncelle</a></td>
                <td><a href="sil?id=${user.id}"
                       onclick="if(!(confirm('Silmek istediğinizden emin misini?'))) return false">Sil</a></td>

            </tr>
        </c:forEach>
    </table>


</div>
</body>
</html>