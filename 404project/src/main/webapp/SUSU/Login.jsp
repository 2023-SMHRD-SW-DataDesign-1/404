<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="LoginStyle.css">
</head>

<body>

	<header>

		<div class="logo">
			<a href="./Main.jsp"> <img src="../img/logo_title.PNG"
				alt="logo">

			</a>

		</div>

		<!-- 메뉴 -->
		<div class="user-actions">
			<a href="JoinMain.jsp">회원가입</a> <a href="./Login.jsp">로그인</a> <a
				href="../Mypage/CartList.jsp">장바구니</a> <a
				href="../Mypage/CartList.jsp">마이페이지</a>
		</div>

	</header>



	<div class="login-container">
		<h1>로그인</h1>
		<form>
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" id="id" name="id"
					required>
			</div>
			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					id="password" name="password" required>
			</div>
		</form>

		<h4>소셜계정으로 간편로그인</h4>
		<div class="line"></div>
		<div class="sns">


			<a href="" id="naver"><img
				src="https://m.joyandroma.com/moa/img/default/login_naver.png"
				alt="naver_logo"></a> <a href="" id="kakao"><img
				src="https://cdn.imweb.me/thumbnail/20220403/a8e484f2dfe39.png"
				alt="kakao_logo"></a> <a href="" id="google"><img
				src="https://i.pinimg.com/originals/a7/53/aa/a753aab7becfdde277e000be2350801f.png"
				alt="google_logo"></a>
		</div>


		<div id="submit">
			<a href="./Main.jsp">
				<button type="submit">로그인</button>

			</a>

		</div>
		<p>
			아직 회원이 아니신가요? <a href="./Join.jsp">회원가입</a>
		</p>
	</div>
</body>

</html>