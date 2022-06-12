<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%@ include file="/include/dbcon.jsp" %>

	<% 
	String userid = request.getParameter("userid");
	String username = request.getParameter("username");
	String pass = request.getParameter("pass");
	String mobile = request.getParameter("mobile");
	String gender = request.getParameter("gender");
	String birthday = request.getParameter("birthday");
	String university = request.getParameter("university");
	String email = request.getParameter("email");
	%>
	<!-- 유효성 -->
	<% 
	if( userid == null || pass == null || username == null || gender == null ){
	%>
	<script>
	alert("잘못된 경로");
	location="/";
	</script>
	<%
	return;
	}
	%>
	<!-- 중복 아이디 체크 -->
	<%
	String sql ="select count(*) cnt from memberinfo where userid='"+userid+"' ";
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	int cnt = rs.getInt("cnt");
	if(cnt == 1){
		%>
		
		<script>
			alert("이미 사용중인 아이디");
			history.back();
		</script>
		
		<%
		return;
	} else if(cnt > 1){
	%>
	<script>
	alert("관리자 연락");
	history.back();
	</script>
	<% }%>
	
	<!-- 저장 sql -->
	<% 
	String sql2 = "insert into memberinfo( ";
	sql2 += "userid,username,pass,mobile,gender,birthday,university,email,rdate) ";
	sql2 += "values('"+userid+"','"+username+"','"+pass+"','"+mobile+"','"+gender+"','"+birthday+"','"+university+"','"+email+"',now())";
	int result = stmt.executeUpdate(sql2);
	%>
	<%
	if(result == 1){
	%>
	<script>
	alert("<%=userid%>님 회원등록을 완료");
	location="login.jsp";
</script>
	<%} else { %>
	<script>
	alert("회원등록 실패");
	history.back();
</script>
	<%} %>
	
	
	
	
	