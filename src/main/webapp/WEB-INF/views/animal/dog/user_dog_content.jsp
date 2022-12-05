<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../include/user_header.jsp"/>
<div class="container">
    <div class="d-flex justify-content-start">
        <dl class="col mx-5">
            <dt>입소날짜</dt>
            <dd>2022-01-13</dd>
        </dl>
    </div>
    <div class="d-flex justify-content-end m-3">
        <div class="row row-cols-auto rounded-3 m-2" style="background-color: whitesmoke">
            <img class="col img-thumbnail w-50"src="https://cdn.pixabay.com/photo/2018/05/13/16/57/dog-3397110_960_720.jpg">
            <div class="col-2 m-1">
                <dl class="m-2">
                    <dt class="mx-2">번호</dt>
                    <dd class="mx-2">
                        19423-345
                    </dd>
                </dl>
                <dl class="m-2">
                    <dt class="mx-2">품종</dt>
                    <dd class="mx-2">
                        포메라니안
                    </dd>
                </dl>
                <dl class="m-2">
                    <dt class="mx-2">성별</dt>
                    <dd class="mx-2">
                        수컷
                    </dd>
                </dl>
                <dl class="m-2">
                    <dt class="mx-2">백신접종</dt>
                    <dd class="mx-2">
                        O
                    </dd>
                </dl>
            </div>
            <div class="col-2 m-1">
                <dl class="m-2">
                    <dt class="mx-2">중성여부</dt>
                    <dd class="mx-2">
                        O
                    </dd>
                </dl>
                <dl class="m-2">
                    <dt class="mx-2">나이</dt>
                    <dd class="mx-2">
                        6(세)
                    </dd>
                </dl>
                <dl class="m-2">
                    <dt class="mx-2">체중</dt>
                    <dd class="mx-2">
                        6.18(Kg)
                    </dd>
                </dl>
                <dl class="m-2">
                    <dt class="mx-2">입양상태</dt>
                    <dd class="mx-2">
                        입양대기
                    </dd>
                </dl>
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-center m-3">
        <div class="form-control input-lg" readonly>
            이 강아지는 애교가 많습니다.
        </div>
    </div>
    <div class="d-flex justify-content-center mx-5 px-5">
        <form action="" method="post">
            <input type="submit" class="btn btn-primary" value="입양하기">
        </form>
    </div>
</div>

<jsp:include page="../../include/user_footer.jsp"/>