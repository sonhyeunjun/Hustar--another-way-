<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Hustar | Template</title>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
	<!-- css 파일 -->
	<link rel="stylesheet" href="/resource/css/common.css" type="text/css">
	<script type="text/javascript" src="/resource/js/login/login.js"></script>

</head>
<body>

	<header>
	<%@ include file="/include/header.jsp"%>
	</header>
		
	
	<!-- 내용  -->
	<form action="/Board/BoardWriteSave.jsp" method="post">

	    
	    <div align="center">
			<!-- HTML5에서는 태그 속성을 바로 명시하지 않고, CSS를 작성하여 붙여준다. -->
			<table border="2" width="200">
				<tr>
					<td>제목 : </td>
					<td><input type="title"></td>
				</tr>
				<tr>
					<td>글쓴이 : </td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea cols="50" rows="20" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="글쓰기"></td>
					<td><input type="reset" value="글쓰기취소"></td>
				</tr>
			</table>
		</div>
	</form>
	
	
	
	
	<!-- footer 바닥글-->
	<%@ include file="/include/footer.jsp"%>


	<!-- 검색 -->
	<%@ include file="/include/search.jsp"%>
	<!-- Search model end -->


	<script src="/resource/js/jquery-3.3.1.min.js"></script>
	<script src="/resource/js/bootstrap.min.js"></script>
	<script src="/resource/js/player.js"></script>
	<script src="/resource/js/jquery.nice-select.min.js"></script>
	<script src="/resource/js/mixitup.min.js"></script>
	<script src="/resource/js/jquery.slicknav.js"></script>
	<script src="/resource/js/owl.carousel.min.js"></script>
	<script src="/resource/js/main.js"></script>


</body>

</html>