<%--
  Created by IntelliJ IDEA.
  User: dhyoo
  Date: 2025-04-10
  Time: 오후 6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>수강신청 완료</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/courseCreated.css" />
</head>
<body>
<div class="message-box">
    <h2>수강신청이 완료되었습니다.</h2>
    <p><strong>${course.year}</strong>년도 <strong>${course.semester}</strong>학기 <strong>${course.courseName}</strong> 과목이 성공적으로 추가되었습니다.</p>

    <a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a>
</div>
</body>
</html>

