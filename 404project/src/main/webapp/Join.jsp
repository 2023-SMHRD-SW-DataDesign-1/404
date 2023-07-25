<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="JoinCon" method="post">
		<br> 아이디 : <input name="user_id" type="text"
			style="text-align: center"> <br> 비밀번호 : <input
			name="password" type="text" style="text-align: center"> <br>
		비밀번호 확인 : <input name="checkpassword" type="text"
			style="text-align: center"> <br> 닉네임 : <input
			name="nickname" type="text" style="text-align: center"> <br>
		성별 : <input name="gender" type="checkbox" style="text-align: center">
		<br> 나이 :<input name="age" type="text" style="text-align: center">
		<br> 주소 : <input name="address" type="text"
			style="text-align: center"> <br> 전화번호 : <input
			name="phone_number" type="text" style="text-align: center"> <br>
		<!-- name값 차후 수정   -->
		<button type="submit" value="완료" name="submit">완료</button>
	</form>
	<script>
		$('#submit').click(function() {
			// 간단한 유효성 검사
			var password = $("#password").val();
			var checkpassword = $("#checkpassword").val();

			if (password != checkpassword) {
				alert('비밀번호와 비밀번호 재입력 값이 같아야 합니다.');
				location.href = 'Join.jsp';
			}
		});
	</script>
</body>
</html>