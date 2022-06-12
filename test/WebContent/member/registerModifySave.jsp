<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%@ include file="/include/dbcon.jsp" %>
	<!-- 세션 아아디 -->
	<%
	String session_id = (String) session.getAttribute("SessionUserID");
	%>
	<% 

	String username = request.getParameter("username");
	String mobile = request.getParameter("mobile");
	String gender = request.getParameter("gender");
	String birthday = request.getParameter("birthday");
	String university = request.getParameter("university");
	String email = request.getParameter("email");
	%>
	<!-- 유효성 -->
	<% 
	if( session_id == null ||  username == null || gender == null ){
	%>
	<script>
	alert("잘못된 경로");
	location="/";
	</script>
	<%
	return;
	}
	%>


	<% 
	 String sql2 =  "UPDATE memberinfo SET ";
			sql2+= " username='"+username+"', mobile='"+mobile+"', gender='"+gender+"', birthday='"+birthday+"', university='"+university+"', email='"+email+"' ";
			sql2+= " where userid='"+session_id+"' ";
	
	int result = stmt.executeUpdate(sql2);
	%>
	
	<%
	if(result == 1){
	%>
	<script>
	alert("<%=username%>님 회원수정완료");
	location="/";
</script>
	<%} else { %>
	<script>
	alert("회원정보 수정 실패");
	history.back();
</script>
	<%} %>
	
	
	
	
	