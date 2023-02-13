<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/13/2023
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set value="1" var="i"></c:set>
<c:forEach begin="1" end="5" var="item">
  ${item}
  <c:out value="${item}"></c:out>
</c:forEach>
</body>
</html>
