
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>This is my Form page</title>
</head>

<body>

<form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
<c:if test="${param.error!=null}">
<i>Invalid id or password</i>
</c:if>
<c:if test="${param.logout!=null}">
<i>Logged out</i>
</c:if>
<p>
Username : <input type="text" name="username"/>
</p>
<p>
Password : <input type="password" name="password"/><br>
</p>

<input type="submit" value="Login"/>
</form:form>
</body>
</html>