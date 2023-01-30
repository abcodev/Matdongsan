<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

    <h2>자유게시판</h2>
    <input type="hidden" name="fno" value="${fb.boardNo}">
    <input type="text" name="boardTitle" value="${fb.boardTitle}"> <br>
    <input type="text" name="boardWriter" value="${fb.boardWriter}" readonly> <br>
    <input type="text" name="boardDate" value="${fb.boardDate}" readonly> <br>

    <input type="text" name="boardArea" value="${fb.boardArea}" readonly> <br>

    <textarea name="boardContent">${fb.boardContent}</textarea> <br><br>

    <button type="submit">수정하기</button>
    <button type="submit">삭제하기</button>

    <br><br>
    <table name="">
        <thead>
            <tr>
                <td>
                    댓글(<span id="rcount"></span>) :
                    <textarea name="replyContent"></textarea>
                    <button onclick="insertReply();">댓글 등록</button>
                </td>
            </tr>
        </thead>
        <tbody>

        </tbody>
    </table>

    <!-- 댓글 등록 -->
    <script>
        $(function(){
            selectReplyList();
        });

        function selectReplyList(){
            $.ajax({
                url : '${pageContext.request.contextPath}/board/replyList',
                data : {fno : '${fb.boardNo}'},
                dataType : 'json',
                success : function(result){
                    console.log(result);
                    let html = ""
                    for(let reply of result){
                        html += "<tr>"
                            + "<td>" + m.nickName + "</td>"
                            + "<td>" +reply.replyContent + "</td>"
                            + "<td>" +reply.replyDate + "</td>"
                            + "</tr>";
                    }
                    $("#replyArea tbody").html(html);
                    $("#rcount").html(result.length);
                }
            })
        }

        function insertReply(){
            $.ajax({
                url : "${pageContext.request.contextPath}/board/insertReply",
                type: post,
                data: {freeBno : '${fb.boardNo}',
                        replyContent : $('textarea[name="replyContent"]:visible').val()},
                success : function(result){
                            if(result == "1"){
								alertify.alert("서비스 요청 성공", '댓글등록 성공');
							}else{
								alertify.alert("서비스 요청 성공", '댓글등록 실패');
							}
							selectReplyList();
                        },
                complete : function(){
							$('textarea[name="replyContent"]').val("");
						}

            })
        }
    </script>
</body>
</html>
