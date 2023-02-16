<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/restaurant/restaurantList.css"/>">
<jsp:include page="../template/font.jsp"></jsp:include>

<div id="chat_contents_ajax">
    <div class="header-chat">
        <div class="name">${chatMessageList[0].memberName}</div>
    </div>
    <div class="chat">
        <div class="messages-chat">
            <c:forEach items="${chatMessageList}" var="chatMessage">
                <c:choose>
                    <c:when test="${chatMessage.sendNo eq 1}">
                        <div class="message text-only">
                            <div class="response">
                                <p class="text">${chatMessage.contents}</p>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="message text-only">
                            <p class=" text">${chatMessage.contents}</p>
                        </div>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
    </div>
</div>