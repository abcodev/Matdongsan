<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>에러 페이지</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%@ include file ="../template/header.jsp" %>
  <jsp:include page="../template/font.jsp"/>

  <style>
    #content{
      width: 100%;
      height: 100%;
      padding: 120px 200px 5px 200px;
      text-align: center;
    }
  </style>

</head>
<body>

<br>
<div id="content">
  <img src="https://cdn-icons-png.flaticon.com/512/2731/2731811.png">
  <br><br>
  <h1 style="font-weight:bold;">${errorMsg }</h1>
</div>




</body>
</html>
