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
    <title>학년별 이수 학점 조회</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/courses.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/button.css" />
</head>
<body>
<a href="javascript:history.back()" class="back-btn">←</a>
<h1>학년별 이수 학점 조회</h1>

<table>
    <thead>
    <tr>
        <th>수강년도</th>
        <th>학기</th>
        <th>취득학점</th>
        <th>상세보기</th>
    </tr>
    </thead>
    <tbody>
    <c:set var="totalCredit" value="0" />
    <c:forEach var="course" items="${id_courses}">
        <tr>
            <td>${course[0]}</td> <!-- 년도 -->
            <td>${course[1]}</td> <!-- 학기 -->
            <td>${course[2]}</td> <!-- 학점 합계 -->
            <td>
                <a class="btn-link"
                   href="${pageContext.request.contextPath}/courseDetail?year=${course[0]}&semester=${course[1]}">
                    링크
                </a>
            </td>
        </tr>
        <c:set var="totalCredit" value="${totalCredit + course[2]}" />
    </c:forEach>

    <tr class="total-row">
        <td colspan="2">총 합계</td>
        <td colspan="2">${totalCredit} 학점</td>
    </tr>
    </tbody>
</table>

</body>
</html>
