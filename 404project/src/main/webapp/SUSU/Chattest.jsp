<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.chat-left {
	text-align: left;
}

.chat-right {
	text-align: right;
}
</style>
<script>
	var currentUser = "user1"; // 현재 사용자의 아이디

	function sendMessage() {
//		var message = document.getElementById("nickname").value;
		var nickname = document.getElementById("message").value;
		var xhr = new XMLHttpRequest();
		xhr.open("POST", "ChatServlet", true);
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
//		xhr.send("nickname=" + nickname);
		xhr.send("message=" + message);
		document.getElementById("message").value = "";
//		document.getElementById("nickname").value = "";
		
	}

	function receiveMessage() {
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var data = JSON.parse(this.responseText); 
				var chat = document.getElementById("chat");

				if (data.user == currentUser) { 
					console.log(data.user)
					chat.innerHTML += "<div class='chat-right'>" + data.message 
							+ "</div>";
				} else {
					chat.innerHTML += "<div class='chat-left'>" + data.message
							+ "</div>";
				}
				receiveMessage();
			}
		};
		xhr.open("GET", "ChatServlet", true);
		xhr.send();
	}

	window.onload = function() {
		receiveMessage();
	};
</script>
</head>
<body>

	<h1>Chat</h1>
	<div id="chat"
		style="width: 300px; height: 300px; overflow: auto; border: 1px solid black;"></div>
	<input type="text" id="nickname">
	<input type="text" id="message">
	<button onclick="sendMessage()">Send</button>


</body>
</html>