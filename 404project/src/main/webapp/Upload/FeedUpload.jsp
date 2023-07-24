<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>피드 등록</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./FeedUploadStyle.css">


    <!-- 부트스트랩 CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>

<body>

    <!-- 상단부 -->
    <header>

        <div class="logo">
            <a href="../SUSU/Main.jsp">
                <img src="../img/logo_title.PNG" alt="logo">

            </a>

        </div>

        <!-- 회원가입/로그인/마이페이지 -->
        <div class="user-actions">
            <a href="../SUSU/JoinMain.jsp">회원가입</a>
            <a href="../SUSU/Login.jsp">로그인</a>
            <a href="/Mypage/CartList.jsp">장바구니</a>
            <a href="/Mypage/CartList.jsp">마이페이지</a>
        </div>

    </header>

    <div class="feed-board">
        <!-- 선택한 파일과 작성한 텍스트 보낼 form 태그 -->
        <form action="">

            <!-- 파일 선택 -->
            <div class="file-container">
                <!--아래 아이콘과 글씨 선택 시 파일 탐색기 실행되어야 함  -->
                <!-- 파일 선택하고 파일이 현재 페이지에서 보여야 함 -->
                <!-- 선택한 파일이 피드 상세페이지에서 보여야 함 -->
                <div class="file-select">

                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-camera" viewBox="0 0 16 16">
                        <path
                            d="M15 12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h1.172a3 3 0 0 0 2.12-.879l.83-.828A1 1 0 0 1 6.827 3h2.344a1 1 0 0 1 .707.293l.828.828A3 3 0 0 0 12.828 5H14a1 1 0 0 1 1 1v6zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2z" />
                        <path
                            d="M8 11a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5zm0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z" />
                    </svg>

                    <span>사진/영상 선택</span>
                </div>
               
                <!-- 버튼 클릭시 파일 탐색기 실행 -->
                <input type="button" class="file-button" value="업로드" onclick=document.all.file.click();>
                <input type="file" name="file" id="file" style="display: none;" />

            </div>

            <!-- 피드 텍스트 -->
            <div class="feed-text">
                <textarea name="feed-text" cols="93%" rows="10%" placeholder="텍스트 입력"></textarea>
            </div>


            <!-- 피드 전송버튼 -->
            <div class="submit">
                <a href="../Seller/MychannelMain.jsp">

                    <button type="submit"><a href="../Channel/Notice.jsp">등록하기</a></button>
                </a>
            </div>
        </form>

    </div>


    <!-- 파일 선택 js -->
    <script>
        function onClickUpload() {
            let myInput = document.getElementById("feed-text");
            myInput.click();
        }
    </script>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>



</body>

</html>