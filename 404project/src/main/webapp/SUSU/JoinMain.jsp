<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="JoinMainStyle.css">
</head>

<body>

 	<!-- 상단부 -->
   <header>

		<div class="logo">
			<a href="./Main.jsp"> <img src="../img/logo_title.PNG"
				alt="logo">

			</a>

		</div>

		<!-- 메뉴 -->
		<div class="user-actions">
			<a href="./JoinMain.jsp">회원가입</a> <a href="./Login.jsp">로그인</a> <a
				href="../Mypage/CartList.jsp">장바구니</a> <a
				href="../Mypage/CartList.jsp">마이페이지</a>
		</div>

	</header>



    <!-- 회원가입 폼 -->
    <div class="signup-container">
        <h3>회원가입 방법 선택하기</h3>
        <h4>소셜계정으로 간편가입</h4>
        <div class="line"></div>
        <div class="sns">

            <!-- 소셜로그인 페이지 연결 -->
            <a href="" id="naver"><img
                    src="https://m.joyandroma.com/moa/img/default/login_naver.png"
                    alt="naver_logo"></a>
            <a href="" id="kakao"><img src="https://cdn.imweb.me/thumbnail/20220403/a8e484f2dfe39.png"
                    alt="kakao_logo"></a>
            <a href="" id="google"><img
                    src="https://i.pinimg.com/originals/a7/53/aa/a753aab7becfdde277e000be2350801f.png"
                    alt="google_logo"></a>
        </div>

        <!-- 일반회원가입 -->
        <div id="submit">
            <a href="./Join.jsp">
                <button type="submit">수수한 사람들 회원가입하기</button>

            </a>
        </div>

        <p>이미 회원이신가요? <a href="./Login.jsp">로그인</a></p>
    </div>


</body>

</html>