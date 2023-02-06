<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/common/mainPage.css"/>">
<jsp:include page="../template/font.jsp"/>

<div id="alarm_list_ajax">
    <i class="fa-regular fa-bell"></i>
    <span>
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
            <span>전체알림
            </span>
            <span onclick="deleteAlarmIfRead()">읽은 알림 삭제</span>
            <span><i class="fa-solid fa-x"></i></span>
        </div>
        <div class="alert_box_body">
            <div class="alert_list">
                <c:forEach items="${alarmList}" var="alarm">
                    <c:if test="${alarm.read == true}">
                        <div class="new_alert" style="opacity: 0.5">
                            <div>
                                <span class="alert_content" onclick="move(${alarm.alarmType}, ${alarm.targetNo})"><i class="fa-solid fa-circle-dot"></i>${alarm.contents}</span>
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
        /*
           alarmContents 는 알람이 올때마다 새로 그리게되는데, .alert_box 도 새로 그려지고 안보이는채로 그려지게된다.
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

        function move(alarmType, targetNo) {
            console.log(alarmType, targetNo);
        }
    </script>
</div>
