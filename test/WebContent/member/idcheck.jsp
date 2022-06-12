<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/include/dbcon.jsp" %>

<%

String userid = request.getParameter("userid");

// 유저 아이디가 null
if(userid == null){
%>
<script>
alert("잘못된 경로");
self.close();
</script>

<%
return;
}

userid = userid.trim();

if(userid.length() < 4 || userid.length() >12 ){
%>
<script>
alert("잘못된 경로");
self.close();
</script>

<%
return;
}

String sql = " select count(*) cnt from memberinfo "
		   + " where userid ='"+userid+"' ";
ResultSet rs = stmt.executeQuery(sql);
rs.next();

int cnt = rs.getInt("cnt");
%>
<style>
#div1{
font-size:14px;
width:100%;
height:100%;
background-color:white;
}
</style>
<div id = "div1">
<%
if(cnt == 0){
out.print("사용가능한 아이디");
} else {
%>

out.print("사용중 아이디");
<%
}
%>
<br>
<p>
<button type="button" onclick="self.close();">닫기</button>
</p>
</div>