<%--
  Created by IntelliJ IDEA.
  User: dhyoo
  Date: 2025-04-10
  Time: 오후 6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>수강신청하기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/createCourse.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/button.css" />
</head>
<body>
<a href="<c:url value='/'/>" class="back-btn">←</a> <!-- / 의 화면으로 이동시키기위한 경로 지정!-->
<h1>수강 신청하기</h1>
<h2> 2025년 2학기 </h2>
<div class="form-wrapper">
    <sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="course">
        <table class="formtable">
            <tr>
                <td class="label">교과코드:</td>
                <td>
                    <sf:input class="control" type="text" path="courseCode"/>
                    <br/><sf:errors path="courseCode" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">교과목명:</td>
                <td>
                    <sf:input class="control" type="text" path="courseName"/>
                    <br/><sf:errors path="courseName" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">교과구분:</td>
                <td>
                    <sf:input class="control" type="text" path="category"/>
                    <br/><sf:errors path="category" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">담당교수:</td>
                <td>
                    <sf:input class="control" type="text" path="professor"/>
                    <br/><sf:errors path="professor" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">학점:</td>
                <td>
                    <sf:input class="control" type="text" path="credit"/>
                    <br/><sf:errors path="credit" class="error"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="수강 신청" class="submit-btn" />
                </td>
            </tr>
        </table>
    </sf:form>
</div>

</body>
</html>
