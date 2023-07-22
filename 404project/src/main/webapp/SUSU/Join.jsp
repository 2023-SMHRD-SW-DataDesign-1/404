<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="JoinStyle.css">
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
			<a href="JoinMain.jsp">회원가입</a> <a href="./Login.jsp">로그인</a> <a
				href="../Mypage/CartList.jsp">장바구니</a> <a
				href="../Mypage/CartList.jsp">마이페이지</a>
		</div>

	</header>


    <div class="signup-container">
        <h1>회원가입</h1>
        <form>
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" required>
                <button type="button" id="id-check">중복확인</button>
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">비밀번호 확인</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="비밀번호를 다시 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="nickname">닉네임</label>
                <input type="text" id="nickname" name="nickname" placeholder="닉네임을 입력하세요" required>

                <button type="button" id="nickname-check">중복확인</button>
            </div>



            <div class="form-group">
                <label for="gender">성별</label>
                <input type="radio" name="gender" placeholder="male">남자
                <input type="radio" name="gender" placeholder="female">여자
            </div>

            <div class="form-group">
                <label for="birthday">생일</label>
                <input type="text" id="birthday" name="birthday" placeholder="1990-01-01" required>
            </div>

            <div class="form-group">
                <label for="phoneNum">휴대폰 번호</label>
                <input type="text" id="phoneNum" name="phoneNum" placeholder="010-1234-5678" required>
            </div>

            <div class="form-group">
                <label for="address">주소</label>
                <input type="text" id="address" name="address" placeholder="주소를 입력하세요">
            </div>

            <div id="submit">
                <a href="./Main.jsp">
                    <button type="submit">가입하기</button>
    
                </a>
            </div>
        </form>
        <p>이미 회원이신가요? <a href="./Login.jsp">로그인</a></p>


    </div>
    </div>


</body>

</html>