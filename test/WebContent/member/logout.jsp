<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
    // 세션 종료
    //https://cloudstudying.kr/lectures/82
    session.removeAttribute("SessionUserID");
    
%>
<script>
alert("로그아웃");
location="/";
</script>