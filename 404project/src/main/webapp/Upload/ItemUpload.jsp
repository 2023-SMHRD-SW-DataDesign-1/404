<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품등록</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./ItemUploadStyle.css">

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
            <a href="../Mypage/CartList.jsp">장바구니</a>
            <a href="../Mypage/CartList.jsp">마이페이지</a>
        </div>

    </header>

    <div class="item-board">
        <h1>상품등록</h1>
        <!-- 상품정보 전송 -->
        <form action="">

            <div class="item-info">
                <div class="left">

                    <label class="label">상품명</label>
                </div>
                <div class="input">

                    <input type="text" name="item_name" id="item_name">
                </div>
            </div>

            <div class="item-info">
                <div class="left">

                    <label class="label">상품가격</label>
                </div>
                <div class="input">

                    <input type="text" name="item_price" id="itme_price">
                </div>
            </div>

            <div class="item-info">
                <div class="left">
                    <label class="label">상품옵션 종류</label>

                </div>
                <div class="input">

                    <select class="select">
                        <option name="item-option" value="price">가격</option>
                        <option name="item-option" value="color">색깔</option>
                        <option name="item-option" value="size">사이즈</option>
                    </select>

                </div>
            </div>

            <div class="item-info">
                <div class="left">
                    <label class="label">상품옵션 추가</label>

                </div>
                <div class="input">
                    <input type="text" name="option_detail" class="option-detail">
                </div>
            </div>

            <div class="item-info">
                <div class="left">

                    <label class="label">상품재료</label>
                </div>
                <div class="input">
                    <input type="text" name="material" id="material">
                </div>
            </div>

            <div class="item-info">
                <textarea name="item-text" id="item-text" cols="30" rows="10"></textarea>
            </div>

            <div class="file">

                <div class="item-file">
                    <input class="upload-name" value="첨부파일" placeholder="첨부파일">
                    <label for="file">파일찾기</label>
                    <input type="file" id="file">
                </div>
            </div>


            <div class="item-ctg">
                <p>카테고리 AI 자동추천</p>
                <p id="gray">추천받은 카테고리를 변경하고 싶은 경우 카테고리를 직접 입력해주세요</p>
                <input type="text" id="item-ctg">
                <button type="submit" id="change">변경</button>
            </div>

            <div>

                <button type="submit" id="upload"><a href="../Seller/MyItemList.jsp">상품등록</a></button>

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


    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

</body>

</html>