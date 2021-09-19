<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Kayıt Formu</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div align="center">
    <h1>Kayıt Formu</h1>
    <h3 align="center"><a href="./">Anasayfa</a></h3>
    <form:form action="kaydet" method="post" modelAttribute="user">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>İsim:</td>
                <td colspan="3"><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Kan Grubu:</td>
                <td><form:input path="bloodGroup"/></td>
                <td>Cep Telefonu:</td>
                <td><form:input type="tel" path="telephone" pattern="05[0-9]{9}" placeholder="05323215566"/></td>
            </tr>
            <tr>
                <td>Adres:</td>
                <td colspan="2"><form:textarea name="address" rows="5" cols="40" path="address"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Kaydet"/></td>
            </tr>
        </table>
    </form:form>

</div>
</body>
</html>