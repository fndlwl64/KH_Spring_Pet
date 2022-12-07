<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("newline", "\n"); %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="../../include/user_header.jsp" />
<link rel="stylesheet" href="${path}/resources/css/user_review.css" />
<link rel="short icon" href="temp" />

<div id="review-contents" class="review-contents">
    <div class="review-section">
        <div class="row">
            <div class="col-3 space"></div>
            <div class="col-6 title">
                <h2>입양후기 - 제니 ${ dog_name } </h2>
            </div>
            <div class="col-3 space"></div>
        </div>
    </div>

    <div>
        <div class="border review-content">
            <div class="content-header">
                <div><h3>${ title } 제목</h3></div>
                <div class="header-info">
                    <ul>
                        <li class="d-inline">
                            <img src="${path}/resources/image/heartpet_logo.png" alt="">
                        </li>
                        <li class="d-inline">
                            <a href="${path}/mypage"><span id="id">${ id } 아이디</span></a>
                            <a id="reply" href="#"><i class="bi bi-card-list"></i> 댓글 0</a>
                        </li>
                        <li class="d-block">${ date } 2022-12-02 조회 ${ hit } 5</li>
                    </ul>
                </div>
                <hr>
            </div>
            <div class="content" data-bs-spy="scroll" data-bs-target="#content-scroll">
                <div id="content-scroll">
                    <div class="content-body">
                        <div class="review-image shadow-sm my-3 bg-body rounded">
                            <img src="${path}/resources/image/potter.jpg" class="rounded mx-auto d-block" alt="review_image">
                        </div>
                        <div class="review-text mb-3">
                            ${ fn:replace(cont.board_cont, newline, '<br/>') } 아이조아 입니당~~ 유기견이였던 우리 코기가 너무나 좋은 집으로 입양을 갔답니다~~ 흐뭇하네유 ㅎㅎ 이번 겨울은 한파로 춥던데 이거보시고 마음이라도 땃땃해졌음 좋겠네용 ㅎㅎ 감기조심하세용~~^^
                        </div>
                    </div>
                </div>
            </div>

            <%-- 댓글쓰기 // 아직 DB 없음 --%>
            <form action="" method="post">
                <table class="table table-bordered reply-table">
                    <tr class="align-middle">
                        <th class="col-2">댓글쓰기</th>
                        <td class="col-10" id="content-reply">
                            <textarea class="form-control" name="" id="" cols="30" rows="5" placeholder="댓글을 남겨보세요."></textarea>
                            <button type="submit" class="btn btn-outline-primary btn-sm"><i class="bi bi-reply"></i> 댓글등록</button>
                        </td>
                    </tr>
                </table>
            </form>

            <div class="content-buttons">
                <%-- 내 글인 경우 --%>
                <button type="button" class="btn btn-success" onclick="location.href='${path}/user_qna_update'"><i class="bi bi-eraser"></i> 수정</button>
                <button type="button" class="btn btn-danger" onclick="location.href=''"><i class="bi bi-trash3"></i> 삭제</button>
                <%-- 여기까지 --%>
                <button type="submit" class="btn btn-dark" onclick="location.href='${path}/user_qna_list'"><i class="bi bi-card-list"></i> 목록</button>
            </div>
        </div>
    </div>

    <div class="space-add"></div>

</div>

<jsp:include page="../../include/user_footer.jsp" />