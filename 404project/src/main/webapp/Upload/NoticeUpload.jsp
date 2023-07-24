<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 등록</title>

    <!-- jquery 불러오기 -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-7GO+jepT9gJe9LB4XFf8snVOjX3iYNb0FHYr5LI1N5c=" crossorigin="anonymous"></script>
    
    <!-- css 파일 연결 -->
    <link rel="stylesheet" href="./NoticeUploadStyle.css">
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
            <a href="../Mypage/CartList.jsp">장바구니</a>
            <a href="../Mypage/CartList.jsp">마이페이지</a>
        </div>

    </header>

    <!-- 공지사항 게시물 작성 -->
    <div class="notice-board">

        <!-- 공지사항 입력값 전송 -->
        <form action="">

            <!-- 공지사항 제목 -->
            <div class="notice-title">
                <input type="text" placeholder="제목을 입력하세요">
            </div>

            <!-- 공지사항 텍스트 -->
            <div class="notice-content">
                <textarea name="notice-txt" cols="93%" rows="30%"  spellcheck="false"></textarea>
            </div>

            <!-- 공지사항 파일 선택 -->
            <!-- 선택한 파일이 공지사항 상세페이지에서 보여야 함 -->
            <div class="notice-file">
                <input class="upload-name" value="첨부파일" placeholder="첨부파일">
                <label for="file">파일찾기</label>
                <input type="file" id="file">
            </div>

            <div class="submit">
                <button type="submit"><a href="../Seller/MyNotice.jsp">등록하기</a></button>
            </div>
        </form>
    </div>


    <!-- 파일 이름 입력창에 넣어주는 js -->
    <script>
        $("#file").on('change', function () {
            var fileName = $("#file").val();
            $(".upload-name").val(fileName);
        });
    </script>

</body>

</html>