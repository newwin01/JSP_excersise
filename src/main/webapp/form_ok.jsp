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

  out.println("이름 : " + writer + "<br />");
  out.println("전공 : " + major + "<br />");
  out.println("학번 : " + sid + "<br />");
  out.println("팀교수님 : " + prof + "<br />");
  out.println("생년월일 : " + bday + "<br />");
  if(gender.equals("M")){
    out.println("성별 : 남자" + "<br />");
  } else{
    out.println("성별 : 여자0" + "<br />");
  }
  if(grade==1){
    out.println("학년 : 1학년" + "<br />");
  }
  else if(grade==2){
    out.println("학년 : 2학년" + "<br />");
  }
  else if(grade==3){
    out.println("학년 : 3학년" + "<br />");
  }
  else if(grade==4){
    out.println("학년 : 4학년" + "<br />");
  }
  out.println("수강 과목 : " + class1 + "<br />");
  out.println("학부 건의사항 : " + content + "<br />");
  out.println("하고 싶은 말 : " + wishes + "<br />");


%>
</body>
</html>
