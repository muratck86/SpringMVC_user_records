<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kayıt Formu</title>
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
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Kan Grubu:</td>
					<td><form:input path="bloodGroup" /></td>
					<td>Cep Telefonu:</td>
					<td><form:input path="telephone" /></td>
				</tr>
				<tr>
					<td>Adres:</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center" ><input type="submit" value="Kaydet"/></td>
				</tr>
			</table>
		</form:form>

	</div>
</body>
</html>