<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/common/header.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
                    <div class="navbar_menu">
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
                    <div class="navbar_menu">
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
                        <a href="#" onclick="redirectLoginPage()">로그인</a>
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
                            <a href="${pageContext.request.contextPath}/brokerMemberMyPage" class="after">제휴회원페이지</a>
                        </c:if>

                        <a href="${pageContext.request.contextPath}/logout" class="after">로그아웃</a>
                        <div id="alarm_place">

                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>



        <script>
            function redirectLoginPage() {
                let loginPage = '${pageContext.request.contextPath}/loginPage?redirectUrl=';
                let redirectUrl = location.href.substring('http://localhost:8070/${pageContext.request.contextPath}'.length - 1);
                return location.href = loginPage + redirectUrl;
            }

            let alarmIsOpen = false;
            window.addEventListener('pageshow', () => {
                retrieveAlarmList();
            });

            const sse = new EventSource("${pageContext.request.contextPath}/alarm/subscribe");
            sse.addEventListener('realtime_alarm', (event) => {
                retrieveAlarmList();
                console.log(event);
            });

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

        </script>

    </div>
</header>
</body>
</html>
