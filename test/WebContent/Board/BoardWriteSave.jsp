<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	
		<%@ include file="/include/dbcon.jsp"%>
		
		<%
		
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		%>
		
		<% 
		String sql = "INSERT INTO notice(title,name,content,rdate)";
				sql += "VALUES('"+title+"','"+name+"','"+content+"', now())";
				
				int result = stmt.executeUpdate(sql);
				if(result == 1 ){
		
		 %>
		 
		 <script>
		 alert("저장 성공");
		location="boardList.jsp";
		</script>
		 <%
		 } else {
			 %>
			 alert("저장 실패");
			  history.back();
			 <%
		 }
		 %>