<%--
  Created by IntelliJ IDEA.
  User: dhyoo
  Date: 2025-04-10
  Time: 오후 6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/main.css" >

</head>
<body>

<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="course">
    <table class="formtable">
        <tr>
            <td class="label"> 수강년도:</td>
            <td><sf:input class="control" type="text" path="year"/> <br/>
                <sf:errors path="year" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 학기:</td>
            <td><sf:input class="control" type="text" path="semester"/> <br/>
                <sf:errors path="semester" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 교과코드:</td>
            <td><sf:input class="control" type="text" path="courseCode"/> <br/>
                <sf:errors path="courseCode" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 교과목명:</td>
            <td><sf:input class="control" type="text" path="courseName"/> <br/>
                <sf:errors path="courseName" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 교과구분:</td>
            <td><sf:input class="control" type="text" path="category"/> <br/>
                <sf:errors path="category" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 담당교수:</td>
            <td><sf:input class="control" type="text" path="professor"/> <br/>
                <sf:errors path="professor" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 학점:</td>
            <td><sf:input class="control" type="text" path="credit"/>  <br/>
                <sf:errors path="credit" class="error"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="새 제안"/> </td>
        </tr>
    </table>
</sf:form>

</body>
</html>
