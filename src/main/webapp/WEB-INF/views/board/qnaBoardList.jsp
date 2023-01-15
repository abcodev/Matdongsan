<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 질문과 답변</title>
    <link rel="stylesheet" href="community_2.css">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
</head>
<body>
<main>
    <div class="content head">
        <div class="search_input">
            <input type="text">
        </div>
        <div class="search_icon">
            <button><i class="fa-solid fa-magnifying-glass"></i></button>
        </div>
    </div>
    <div class="content body">
        <div class="sidebar">
            <div>
                <a href="#">자유게시판</a>
                <a href="#">질문과 답변</a>
            </div>
        </div>
        <div class="boardlist">
            <div class="boardlist_head">
                <select>구를 선택해주세요</select>
                <button id="writebtn"><i class="fa-solid fa-pencil"></i>글작성하기</button>
            </div>
            <div id="boardlist_main">
                <table class="table">
                    <c:forEach var="qb" items="${list}">
                    <tr><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th></tr>
                    <tr><td>${qb.qnaTtitle}</td><td>${qb.qnaWriter}</td><td>${qb.qnaDate}</td><td>${qb.count}</td></tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    <div class="paging">

    </div>
</main>
</body>
</html>