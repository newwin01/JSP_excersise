<%--
  Created by IntelliJ IDEA.
  User: jangsechang
  Date: 2022/11/01
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학생 정보 관리</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        div {
            text-align: center
        }
    </style>

</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String major = request.getParameter("major");
    String writer = request.getParameter("writer");
    int sid = Integer.parseInt(request.getParameter("sid"));
    String bday = request.getParameter("bday");
    String prof = request.getParameter("prof");
    String gender = request.getParameter("gender");
    int grade = Integer.parseInt(request.getParameter("grade"));
    String class1 = request.getParameter("class[]");
    String content = request.getParameter("content");
    String wishes = request.getParameter("wishes");


    String genderMSG = "";
    if (gender.equals("M")) {
        genderMSG = "남자";
    } else {
        genderMSG = "여자;";
    }

    String gradeMSG = "";
    if (grade == 1) {
        gradeMSG = "1학년";
    } else if (grade == 2) {
        gradeMSG = "2학년";
    } else if (grade == 3) {
        gradeMSG = "3학년";
    } else if (grade == 4) {
        gradeMSG = "4학년";
    }
%>
<div class="table-responsive">
    <table class="table table-striped table-sm">
        <h3>입력하신 데이터는 다음과 같습니다.</h3>
        <thead>
        <tr>
            <th>이름</th>
            <th>전공</th>
            <th>학번</th>
            <th>팀교수님</th>
            <th>생년월일</th>
            <th>성별</th>
            <th>학년</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%=writer%>
            </td>
            <td><%=major%>
            </td>
            <td><%=sid%>
            </td>
            <td><%=prof%>
            </td>
            <td><%=bday%>
            </td>
            <td><%=genderMSG%>
            </td>
            <td><%=gradeMSG%>
            </td>
        </tr>
        </tbody>
    </table>
    <div class="form-control"> 수강과목: <%=class1%>
    </div>
    <div class="form-control"> 학부 건의사항: <%=content%>
    </div>
    <div class="form-control"> 하고 싶은 말: <%=wishes%>
    </div>
</div>
<br>
<br>
<br>
<div>
    <%
        out.println("이름 : " + writer + "<br />");
        out.println("전공 : " + major + "<br />");
        out.println("학번 : " + sid + "<br />");
        out.println("팀교수님 : " + prof + "<br />");
        out.println("생년월일 : " + bday + "<br />");
        if (gender.equals("M")) {
            out.println("성별 : 남자" + "<br />");
        } else {
            out.println("성별 : 여자0" + "<br />");
        }
        if (grade == 1) {
            out.println("학년 : 1학년" + "<br />");
        } else if (grade == 2) {
            out.println("학년 : 2학년" + "<br />");
        } else if (grade == 3) {
            out.println("학년 : 3학년" + "<br />");
        } else if (grade == 4) {
            out.println("학년 : 4학년" + "<br />");
        }
        out.println("수강 과목 : " + class1 + "<br />");
        out.println("학부 건의사항 : " + content + "<br />");
        out.println("하고 싶은 말 : " + wishes + "<br />");
    %>
</div>
</body>
</html>
