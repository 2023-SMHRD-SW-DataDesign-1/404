<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./InfoStyle.css">

    <!-- 부트스트랩 CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


</head>

<body>

  <!-- 상단부 -->
   <header>
	<!-- 로고 -->
		<div class="logo">
			<a href="../SUSU/Main.jsp"> <img src="../img/logo_title.PNG"
				alt="logo">

			</a>

		</div>

		<!-- 메뉴 -->
		<div class="user-actions">
			<a href="../SUSU/JoinMain.jsp">회원가입</a> 
			<a href="../SUSU/Login.jsp">로그인</a> 
			<a href="../Mypage/CartList.jsp">장바구니</a> 
			<a href="../Mypage/CartList.jsp">마이페이지</a>
		</div>

	</header>

  
   
    <!-- 마이페이지 메뉴 -->
    <div class="mypage_ctn">
        <span><a href="./CartList.jsp">장바구니 목록</a></span>
        <span ><a href="./PayList.jsp">결제한 내역</a></span>
        <span id="ctn-select"><a href="./InfoEdit.jsp">회원정보 수정</a></span>

    </div>


    <!-- 회원정보 수정 -->
    <div class="info-container">
        <h3>회원정보수정</h3>

        <form action="">

            <div class="form-group">
                <label for="nickname">닉네임</label>
                <input type="text" id="nick-edit" name="nick-edit">
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <!-- 새로운 비밀번호로 입력창에 채워져야 함 -->
                <input type="password" id="pw-edit" name="pw-edit" value="pw-edit">

                <!-- 비밀번호 변경하기 버튼 -->
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    변경하기
                </button>

                <!-- 비밀번호 변경 팝업창  -->
                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">비밀번호 변경</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">

                                    <label for="password">기존 비밀번호</label>
                                    <input type="password" id="old-pw" name="old-pw">
                                    
                                </div>

                                <div class="form-group">
                                    <label for="password">변경할 비밀번호</label>
                                    <input type="password" id="pw-edit" name="pw-edit">
                                </div>
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소하기</button>

                                <!-- 변경완료를 누르면 새로운 비밀번호가 "pw-edit" 입력창으로 전송됨 -->
                                <form action="">

                                    <a href="./MypageInfo.jsp">
                                        
                                        <button type="button" class="btn btn-danger">변경완료</button>
                                    </a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>



            <div class="form-group">
                <label for="phonenum">전화번호</label>
                <input type="text" id="phone-edit" name="phone-edit">
            </div>

            <div class="form-group">
                <label for="address">집주소</label>
                <input type="text" id="adr-edit" name="adr_edit">

            </div>

            <div id="submit">

                <!-- 회원정보 수정 버튼을 누르면 DB PW변경됨 -->

                

                    <a href="../SUSU/Login.jsp">
                        
                        <button type="submit" id="info-edit">회원정보 수정</button>
                    </a>
               
            </div>
        </form>
    </div>



    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

</body>

</html>