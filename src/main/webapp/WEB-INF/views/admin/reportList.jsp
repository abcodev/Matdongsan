<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-28
  Time: 오후 7:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>관리자 신고관리 페이지</title>
</head>
<body>
<SPAN>하이</SPAN>
<c:forEach var="ul" items="${list}">
    <tr>
        <th>${ul.memberNo}</th>


    </tr>
</c:forEach>
</body>
</html>
