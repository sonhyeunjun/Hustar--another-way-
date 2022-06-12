<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/include/dbcon.jsp"%>

<%
String userid = request.getParameter("userid");
String pass = request.getParameter("pass");

if (userid == null || pass == null) {
%>

<script>
	alert("잘못된 경로!");
	location = "/";
</script>
<%
return;
}
// 유저 아이디 확인
String sql = "select count(*) cnt from memberinfo where userid='" + userid + "' and pass = '" + pass + "' ";
ResultSet rs = stmt.executeQuery(sql);
// 가져오고
rs.next();

//갯수
int cnt = rs.getInt("cnt");

// 만약 데이터가 없다면
if (cnt == 0) {
%>
<script>
	alert("잘못된 정보");
	history.back();
</script>
<%
return;
//session 변수
} else {
	// 과정을 통과 -> 사용자의 아이디를 변수를 가진다.
	// sessionUser = "";
	session.setAttribute("SessionUserID", userid);
	//세션 지속시간 (60초동안) 
	//https://dololak.tistory.com/577
	session.setMaxInactiveInterval(60*60);
}
%>
<script>
	alert("<%=userid%>님 로그인 되었습니다.");
	location = "/";
</script>

