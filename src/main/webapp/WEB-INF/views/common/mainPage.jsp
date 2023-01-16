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
    <title>맛동산</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/common/mainPage.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
</head>

<body>


<header id="header">
    <div class="inner">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/images/common/맛동산%20로고.png" alt="로고">
        </div>
        <nav class="navbar">
            <div class="navbar_menu">
                <div class="dropdown">
                    <button class="dropdown-btn"><a href="">부동산</a></button>
                </div>

                <div class="dropdown">
                    <button class="dropdown-btn"><a href="">동네맛집</a></button>
                </div>

                <div class="dropdown">
                    <button class="dropdown-btn"><a href="">커뮤니티</a></button>
                    <div class="dropdown-submenu">
                        <a href="">자유게시판</a>
                        <a href="">질문&답변</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-btn"><a href="">1:1문의</a></button>
                </div>
            </div>
        </nav>

        <div class="login">

            <c:choose>
            <c:when test="${ empty loginUser}">
                <a href="${pageContext.request.contextPath}/loginPage">로그인</a>
            </c:when>
            <c:otherwise>
                <label>
                    <img src="${loginUser.profileImage}" width="50px">
                        ${loginUser.memberName} 님 환영합니다.
                </label> &nbsp;&nbsp;
                <%--                    <a href="${contextPath}/myPage">마이페이지</a>--%>
                <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
            </c:otherwise>
            </c:choose>

        </div>

    </div>
</header>


<main>
    <div class="map">
        <div class="mapImg">
            <img src="" alt="">
        </div>
        <div class="side news">
            <h3>부동산 주요 뉴스</h3>
            <br>
            <p><a href="https://land.naver.com/news/newsRead.naver?type=region&prsco_id=417&arti_id=0000882363">${title}</a> </p>
            <br>
            <p>${news}</p>


        </div>

        <div class="side lookList">
            <h3>최근 본 부동산 목록</h3>


        </div>
    </div>
    <button id="go-top"><i class="fa-solid fa-angles-up"></i></button>
    <div class="floating-chat">
        <i class="fa-regular fa-comments"></i><span>1:1문의</span>
        <div class="chat">
            <div class="header">
                    <span class="title">
                        what's on your mind?
                    </span>
                <button>
                    <i class="fa fa-times" aria-hidden="true"></i>
                </button>
            </div>
            <ul class="messages">
                <li class="other">메세지</li>
                <li class="self">메세지</li>
            </ul>
            <div class="footer">
                <div class="text-box" contenteditable="true" disabled="true"></div>
                <button id="sendMessage">send</button>
            </div>
        </div>
    </div>
    </div>

</main>

</body>


<script>
    const header = document.querySelector('#header');

    function scrollFunc() {
        if (pageYOffset >= 1) {
            header.classList.add('on');
        } else {
            header.classList.remove('on');
        }
    }
    window.addEventListener('scroll', scrollFunc);


    var backToTop = () => {
        // Scroll | button show/hide
        window.addEventListener('scroll', () => {
            if (document.querySelector('html').scrollTop > 100) {
                document.getElementById('go-top').style.display = "block";
            } else {
                document.getElementById('go-top').style.display = "none";
            }
        });
        // back to top
        document.getElementById('go-top').addEventListener('click', () => {
            window.scrollTo({
                top: 0,
                left: 0,
                behavior: 'smooth'
            });
        })
    };
    backToTop();


    //채팅//

</script>

</html>