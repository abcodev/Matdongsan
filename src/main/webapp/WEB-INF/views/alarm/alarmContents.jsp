<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
<jsp:include page="../template/font.jsp"/>

<div id="alarm_list_ajax">
    <i class="fa-regular fa-bell"></i>
    <span id="alarm_count">
        <c:set var="alarmCount" value="0"/>
        <c:forEach items="${alarmList}" var="alarm">
            <c:if test="${alarm.read == false}">
                <c:set var="alarmCount" value="${alarmCount + 1}"/>
            </c:if>
        </c:forEach>
        <c:out value="${alarmCount}"/>
    </span>

    <div class="alert_box">
        <div class="alert_box_header">
            <span>전체알림</span>
            <span onclick="readAllAlarm()">모든 알림 읽기</span>
            <span onclick="deleteAlarmIfRead()">읽은 알림 삭제</span>
            <span><i class="fa-solid fa-x"></i></span>
        </div>
        <div class="alert_box_body">
            <div class="alert_list">
                <c:forEach items="${alarmList}" var="alarm">
                    <c:if test="${alarm.read == true}">
                        <div class="new_alert" style="opacity: 0.5">
                            <div>
                                <span class="alert_content" onclick="move('${alarm.alarmType}', '${alarm.targetNo}')"><i class="fa-solid fa-circle-dot"></i>${alarm.contents}</span>
                                <i class="fa-regular fa-trash-can" onclick="deleteAlarm(${alarm.alarmNo})"></i>
                            </div>
                            <span class="alert_date"><fmt:formatDate value="${alarm.createdDate}" type="both"
                                                                     pattern="MM월dd일 HH:mm"/></span>
                        </div>
                    </c:if>
                    <c:if test="${alarm.read == false}">
                        <div class="new_alert">
                            <div>
                                <span class="alert_content" onclick="readAlarm(${alarm.alarmNo})"><i class="fa-solid fa-circle-dot"></i>${alarm.contents}</span>
                                <i class="fa-regular fa-trash-can" onclick="deleteAlarm(${alarm.alarmNo})"></i>
                            </div>
                            <span class="alert_date"><fmt:formatDate value="${alarm.createdDate}" type="both"
                                                                     pattern="MM월dd일 HH:mm"/></span>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>

    <script>
        /**
           alarmContents 는 알람이 올때마다 새로 그리게되는데, .alert_box 도 새로 그려지고 안보이는채로 그려지게 되는기
           그래서 알림창을 켜둔채로 새로운 알림이 오게되면 안보이는 상태가 되어버림.
           toggle("scale") 을 이용한 방식을 사용하고 있는데....
           Show, Hide 를 이용해서 애초에 그릴때 보여지게 그리거나, 안보여지게 그리거나 해야할것같음.
         */

        $(".fa-bell").click(function () {
            $(".alert_box").toggle("scale");
            alarmIsOpen = !alarmIsOpen;
        });

        $(".fa-x").click(function () {
            $(".alert_box").toggle("scale");
            alarmIsOpen = false;
        });

        function readAlarm(alarmNo) {
            $.ajax({
                url: '${pageContext.request.contextPath}/alarm/' + alarmNo + '/read',
                method: 'GET',
                success(data) {
                    retrieveAlarmList();
                    move(data['alarmType'], data['targetNo']);
                }
            });
        }

        function readAllAlarm() {
            $.ajax({
                url: '${pageContext.request.contextPath}/alarm/readAll',
                method: 'GET',
                success() {
                    retrieveAlarmList();
                }
            });
        }

        function deleteAlarm(alarmNo) {
            $.ajax({
                url: '${pageContext.request.contextPath}/alarm/' + alarmNo,
                method: 'DELETE',
                success() {
                    retrieveAlarmList();
                }
            });
        }

        function deleteAlarmIfRead() {
            $.ajax({
                url: '${pageContext.request.contextPath}/alarm/deleteIfRead',
                method: 'DELETE',
                success() {
                    retrieveAlarmList();
                }
            });
        }

        /**
         *  1. 관리자에게 새로운 문의가 왔다는 알람 -> Type: NEW_QUESTION, Target: RoomNo(or MemberNo) -> *1:1문의 화면으로 보낼거*
            2. 멤버에게 새로운 문의 답변이 왔다는 알람 -> Type: NEW_ANSWER, Target: ???????
            3. 내 글에 댓글이 달렸다는 알람 -> Type: NEW_REPLY, Target: FreeBoardNo -> *FreeBoard 로 보낼거*
            4. 내 질문에 답글이 달렸다는 알람 -> Type: NEW_BOARD_ANSWER, Target: QnaBoardNo -> *QnaBoard 로 보낼거*
            5. 부동산멤버에게 새로운 방문요청이 왔다는 알람 -> Type: NEW_RESERVATION_BROKER, Target: AgentNo -> *MyPage 로 보낼거*
            6. 방문요청이 승인되었다는 알람 -> Type: RESERVATION_APPROVE, Target: RevNo, -> *MyPage 로 보낼거*
            7. 방문요청이 거절되었다는 알람 -> Type: RESERVATION_CANCEL, Target: RevNo, -> *MyPage 로 보낼거*
         */
        function move(alarmType, targetNo) {
            console.log(alarmType, targetNo);
            let moveUrl = '${pageContext.request.contextPath}';
            if (alarmType === 'NEW_QUESTION') {
                moveUrl += '/chat/admin';
            } else if (alarmType === 'NEW_ANSWER') {
                moveUrl += '/mainPage?open_chat_flag=true';
            } else if (alarmType === 'NEW_REPLY') {
                moveUrl += '/board/freeList/detail/' + targetNo;
            } else if (alarmType === 'NEW_BOARD_ANSWER') {
                moveUrl += '/board/detail/' + targetNo;
            } else if (alarmType === 'NEW_RESERVATION_BROKER') {
                moveUrl += '/brokerMemberMyPage';
            } else if (alarmType === 'RESERVATION_APPROVE'
                        || alarmType === 'RESERVATION_CANCEL') {
                moveUrl += '/myPage';
            } else if (alarmType === 'NEW_BROKER_ACCEPT'
                        || alarmType === 'NEW_BROKER_REJECT') {
                moveUrl += '/brokerMemberMyPage';
            }
            location.href = moveUrl;
        }
    </script>
</div>
