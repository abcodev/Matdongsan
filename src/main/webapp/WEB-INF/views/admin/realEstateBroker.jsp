<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <title>부동산 중개업자 신청 관리</title>
</head>
<body>

<%@ include file ="../template/header.jsp" %>
<div id="headeer"></div>
<div id="button2">
    <button class="b2" id="movePage">회원관리</button>
    <button type="button" id="b1">신고관리</button>
</div>
<br><br><br><br>
<div class="reportTable">
    <table id="tableDiv">
        <thead>
        <tr>
            <th>중개자 이름</th>
            <th>이메일</th>
            <th>부동산 이름</th>
            <th>공인중개사 번호</th>
            <th>전화번호</th>
            <th>첨부파일</th>
            <th>처리상태</th>
        </tr>
        </thead>
        <tbody id="tableList">
        <c:forEach var="rl" items="${reportList}">
            <tr>
                <td>x</td>
                <td>x</td>
                <td>x</td>
                <td>x</td>
                <td>x</td>
                <td><button type="button" class="btn22" onclick="movePage(${rl.FNo},'${rl.reportType}')">상세보기</button></td>
                <c:choose>
                    <c:when test="${rl.QStatus or rl.FStatus == 'Y' }">
                        <td><button type="button" class="add-btn" id="btnOn"  data-no="${rl.FNo}" data-type='${rl.reportType}'>처리중</button></td>
                    </c:when>
                    <c:otherwise>
                        <td><button type="button" class="add-btn" id="btnClose">처리완료</button></td>
                    </c:otherwise>
                </c:choose>
                <td><select id="reportPeriod" name="reportPeriod">
                    <option>정지기간선택</option>
                    <option value="three">3일정지</option>
                    <option value="seven">7일정지</option>
                    <option value="infinity">영구정지</option>
                </select>
                    <button type="submit">정지확인</button>
                </td>

            </tr>
        </c:forEach>
        </tbody>


    </table>
</div>

<div class="modal" id="modal">
    <div class="modal_body">
        <div class="m_head">
            <div class="modal_title">게시글을 삭제처리하시겠습니까?</div>
            <div class="close_btn" id="close_btn">X</div>
        </div>
        <div class="m_body">
            <input type="hidden" id="rType" value=""/>
            <input type="hidden" id="fNo"  value=""/>
            <button type="button" id="clear" class="btn" onclick="movePage2()">예</button>
            <button type="button" class="btn close_btn" id="close_btn2">아니요</button>
        </div>

    </div>
</div>




</body>
</html>
