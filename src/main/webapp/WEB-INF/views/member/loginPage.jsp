<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="로그인.css">
</head>
<body>
<div id="content">
    <div id="login_head">
        <h2>소셜로그인</h2>
    </div>
    <div id="login_body">
        <button>카카오</button>
        <button datasrc="${naverUrl}">네이버</button>
        <button>구글</button>
    </div>
</div>
</body>
</html>