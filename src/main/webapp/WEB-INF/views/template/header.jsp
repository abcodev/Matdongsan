<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>header</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/resources/css/common/header.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<header id="header">
    <div class="inner">
        <a href="${pageContext.request.contextPath}/mainPage">
            <div class="logo">
                <img src="${pageContext.request.contextPath}/resources/images/common/맛동산로고.png" alt="로고">
            </div>
        </a>

        <nav class="navbar">
            <c:choose>
                <c:when test="${loginUser.grade == 'ADMIN'}"> <%-- 관리자 --%>
                    <div class="navbar_menu admin">
                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/realEstate">부동산</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn">
                                <a href="${pageContext.request.contextPath}/selectResList">동네맛집</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/board/freeList">커뮤니티</a>
                            </button>
                            <div class="dropdown-submenu">
                                <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
                                <a href="${pageContext.request.contextPath}/board/qnaList">질문&답변</a>
                            </div>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn"><a
                                    href="${pageContext.request.contextPath}/chat/admin">1:1문의</a>
                            </button>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>  <%-- 일반회원, 부동산 회원 --%>
                    <div class="navbar_menu general">
                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/realEstate">부동산</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn">
                                <a href="${pageContext.request.contextPath}/selectResList">동네맛집</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/board/freeList">커뮤니티</a>
                            </button>
                            <div class="dropdown-submenu">
                                <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
                                <a href="${pageContext.request.contextPath}/board/qnaList">질문&답변</a>
                            </div>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </nav>

        <div class="login">
            <c:choose>
                <c:when test="${ empty loginUser}">
                    <div class="login_before">
                        <a href="${pageContext.request.contextPath}/loginPage">로그인</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="login_after">
                        <img src="${loginUser.profileImage}" class="user_img">
                        <c:if test="${loginUser.grade == 'ADMIN'}">
                            <a href="${pageContext.request.contextPath}/admin/userList" class="after">관리자페이지</a>
                        </c:if>
                        <c:if test="${loginUser.grade == 'GENERAL' || loginUser.grade == 'GENERAL2'}">
                            <a href="${pageContext.request.contextPath}/myPage" class="after">마이페이지</a>
                        </c:if>
                        <c:if test="${loginUser.grade == 'BROKER'}">
                            <a href="${pageContext.request.contextPath}/brokerMemberMyPage" class="after">부동산회원페이지</a>
                        </c:if>

                        <a href="${pageContext.request.contextPath}/logout" class="logOut">로그아웃</a>
                        <div id="alarm_place">

                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>


        <script>
            function redirectLoginPage() {
                let loginPage = '${pageContext.request.contextPath}/loginPage?redirectUrl=';
                <%--let redirectUrl = location.href.substring('http://matdongsan.site/${pageContext.request.contextPath}'.length - 1);--%>
                let redirectUrl = location.href.substring('http://localhost:8070/${pageContext.request.contextPath}'.length - 1);
                return location.href = loginPage + redirectUrl;
            }
            let alarmIsOpen = false;

            if (${not empty loginUser}) {
                window.addEventListener('pageshow', () => {
                    retrieveAlarmList();
                });
                const sse = new EventSource("${pageContext.request.contextPath}/alarm/subscribe");
                sse.addEventListener('realtime_alarm', (event) => {
                    retrieveAlarmList();
                });
                sse.addEventListener('change_grade', (event) => {
                    refreshSession();
                });
            }

            function retrieveAlarmList() {
                $.ajax({
                    url: '${pageContext.request.contextPath}/alarmList',
                    method: 'GET',
                    success(data) {
                        const html = jQuery('<div>').html(data);
                        const contents = html.find('div#alarm_list_ajax').html()
                        $('#alarm_place').html(contents)
                        if (alarmIsOpen) {
                            $(".alert_box").toggle("scale");
                        }
                    }
                });
            }

            function refreshSession() {
                $.ajax({
                    url: '${pageContext.request.contextPath}/member/refreshSession',
                    method: 'GET',
                    success() {
                        location.reload();
                    }
                });
            }

        </script>
    </div>
</header>
</body>
</html>
