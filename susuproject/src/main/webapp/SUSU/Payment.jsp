
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sample Payment</title>
</head>
<!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
        var IMP = window.IMP; 
        IMP.init("imp67011510"); 
      
        var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;
        

        function requestPay() {
            IMP.request_pay({
                pg : 'nice',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : '당근 10kg',
                amount : 100,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '아임포트 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456',
                card: {
                     direct: {
                        code: "367",
                        quota: 0
                    }
                }
            }, function (rsp) { // callback
                if (rsp.success) {
                	location.href="./Main.jsp";
                    console.log(rsp);
                } else {
                	location.href="./Payment.jsp";
                    console.log(rsp);
                }
            });
        }
    </script>
<body>
	<button onclick="requestPay();">결제하기</button>
	<!-- 결제하기 버튼 생성 -->
</body>
</html>