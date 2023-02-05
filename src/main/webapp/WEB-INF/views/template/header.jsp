<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/common/header.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
                <c:choose>
                    <c:when test="${loginUser.memberNo == 1}">
                        <div class="dropdown">
                            <button class="dropdown-btn"><a
                                    href="${pageContext.request.contextPath}/chat/admin">1:1문의</a>
                            </button>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}">FAQ</a>
                            </button>
                        </div>
                    </c:otherwise>
                </c:choose>
                <script>
                    // TODO : 로그인 된 후에만되도록 분기문 필요
                    const sse = new EventSource("${pageContext.request.contextPath}/alarm/subscribe");
                    sse.addEventListener('realtime_alarm', (event) => {
                        console.log(event);
                    })
                </script>

            </div>
        </nav>
        <div class="login">

            <c:choose>
                <c:when test="${ empty loginUser}">
                    <div class="login_before">
                        <a href="${pageContext.request.contextPath}/loginPage">로그인</a>
                    </div>
                </c:when>
                <c:otherwise>

                    <c:if test="${loginUser.memberNo == 1}">
                        <div class="login_after">
                            <img src="${loginUser.profileImage}" class="user_img">
                            <a href="${pageContext.request.contextPath}/admin/userList" class="after">관리자페이지</a>
                            <a href="${pageContext.request.contextPath}/myPage" class="after">마이페이지</a>
                            <a href="${pageContext.request.contextPath}/logout" class="after">로그아웃</a>
                            <i class="fa-regular fa-bell"></i>
                        </div>
                    </c:if>
                    <c:if test="${loginUser.memberNo != 1}">
                        <div class="login_after">
                            <img src="${loginUser.profileImage}" class="user_img">
                            <a href="${pageContext.request.contextPath}/myPage" class="after">마이페이지</a>
                            <a href="${pageContext.request.contextPath}/logout" class="after">로그아웃</a>
                            <i class="fa-regular fa-bell"></i>
                        </div>
                    </c:if>
                </c:otherwise>
            </c:choose>
            <%--      ******실시간 알림*******--%>
            <div class="alert_box">
                <div class="alert_box_header">
                    <span>전체알림</span>
                    <span>읽은 알림 삭제</span>
                    <span><i class="fa-solid fa-x"></i></span>
                </div>
                <div class="alert_box_body">
                    <div class="alert_list">
                        <div class="new_alert">
                            <div>
                                <span class="alert_content"><i class="fa-solid fa-circle-dot"></i>내 글에 댓글 작성됨</span>
                                <i class="fa-regular fa-trash-can"></i>
                            </div>
                            <span class="alert_date">1월 27일 </span>
                        </div>
                        <div class="new_alert">
                            <div>
                                <span class="alert_content"><i
                                        class="fa-solid fa-circle-dot"></i>내가 찜한 부동산의 정보 업데이트</span>
                                <i class="fa-regular fa-trash-can"></i>
                            </div>
                            <span class="alert_date">1월 27일 </span>
                        </div>
                        <div class="new_alert">
                            <div>
                                <span class="alert_content"><i class="fa-solid fa-circle-dot"></i>1:1 채팅 문의 답변</span>
                                <i class="fa-regular fa-trash-can"></i>
                            </div>
                            <span class="alert_date">1월 27일 </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<script>
    <%-- 실시간 알림 --%>
    $(".fa-bell").click(function () {
        $(".alert_box").toggle("scale");
    });

    $(".fa-x").click(function () {
        $(".alert_box").toggle("scale");
    });
</script>
</body>
</html>
