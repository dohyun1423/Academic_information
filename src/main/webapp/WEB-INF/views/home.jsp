<%--
  Created by IntelliJ IDEA.
  User: dhyoo
  Date: 2025-04-10
  Time: 오후 6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학사 정보 시스템</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/home.css" />
</head>
<body>
<div class="header">
    학사 정보 시스템
</div>

<div class="container">
    <!-- 학년별 이수 학점 조회 -->
    <div class="section">
        <h2>학년별 이수 학점 조회</h2>
        <p>학년별로 이수한 학점을 조회할 수 있습니다!
            각 학기별 취득 학점을 확인할 수 있습니다!

            이수한 교과목 정보를 기반으로
            1학기, 2학기별 이수한 총 학점을 확인할 수 있습니다.

            상세보기 링크를 통해 각 학기의 수강 내역도 확인할 수 있습니다.
        </p>
        <a href="${pageContext.request.contextPath}/courses" class="btn">이수 학점 조회</a>
    </div>

    <!-- 수강신청하기 -->
    <div class="section">
        <h2>수강신청하기</h2>
        <p>2025년 2학기 수강신청 페이지입니다.
            원하는 강좌를 신청하세요!

            수강신청 초기 화면은 장바구니입니다.
            수강신청하는데 참고하시기 바랍니다!

            <b>제한 사항</b>
            가. 종합정보시스템 중복로그인 불가
            - 종합정보시스템 중복로그인 시 이전 로그인은 자동 로그아웃 됩니다.
            나. 시스템 과부하발생 시 IP차단 조치
        </p>
        <a href="${pageContext.request.contextPath}/createCourse" class="btn">수강 신청</a>
    </div>

    <!-- 수강신청 조회 -->
    <div class="section">
        <h2>수강신청 조회</h2>
        <p>2025년 2학기
            수강신청한 강좌를 확인할 수 있습니다.

            신청한 과목의 교과목명, 교수명, 교과구분, 학점 등을 한눈에 확인할 수 있으며,
            신청 내역을 바탕으로 수강 계획을 조정하거나 추가 신청 시 참고할 수 있습니다.

            수강신청 변경 기간에는 이 페이지를 통해 신청 내역을 수시로 확인하세요.
        </p>
        <a href="${pageContext.request.contextPath}/viewCourse" class="btn">신청 내역 보기</a>
    </div>
</div>

</body>
</html>
