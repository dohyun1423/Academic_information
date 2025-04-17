<%--
  Created by IntelliJ IDEA.
  User: dhyoo
  Date: 2025-04-15
  Time: 오후 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>${year}년 ${semester}학기 수강 내역</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/courses.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/button.css" />
</head>
<body>
<a href="javascript:history.back()" class="back-btn">←</a>
<h1>${year}년 ${semester}학기 수강 내역</h1>

<table>
    <thead>
    <tr>
        <th>교과코드</th>
        <th>과목명</th>
        <th>구분</th>
        <th>교수</th>
        <th>학점</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courseList}">
        <tr>
            <td>${course.courseCode}</td>
            <td>${course.courseName}</td>
            <td>${course.category}</td>
            <td>${course.professor}</td>
            <td>${course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

