<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<c:set var="path" value="${pageContext.request.contextPath}"/>
 	
<!DOCTYPE html>

<html>
<head>
<link href="${path}/resources/css/details.css" rel="stylesheet"/>

<meta charset="UTF-8">
<title>Game Platform</title>
</head>
<header>
	<section>
		<div class = "logo">
			<a href="/">Game Platform</a>
		</div>
		
		<div class = "search">
			<form method="GET">
				<input type = "text" placeholder="게임 검색"></input>
			</form>
		</div>
		
		<table>
			<tr>
			     <!-- 첫 번째 Modal을 여는 클래스 -->
				<td><h1 id="login" class="btn">로그인</h1></td>
				
			    <!-- 두 번째 Modal을 여는 클래스 -->
				<td><h1 id="register" class="btn">회원가입</h1></td>
				
				
			</tr>
		</table>
			
	</section>

	<nav>
		<ul>
			<li><a href="/newGame">새로운 게임</a></li>
			<li><a href="/community">커뮤니티</a></li>
			<li><a href="/lank">랭크</a></li>
			<li><a href="/download">다운로드</a></li>
			<li><a href="/customerService">고객센터</a></li>
		</ul>
	</nav>
	
</header>
<body>
	<div id="mainDoc">	
		<section>
			<article id="communityFrame">
				<h3>게임 이름</h3>
				
				<div id="innerFrame">
										
					
				</div>
				
			</article>
		
		</section>
		
	
	</div>
	
	<table class="description">
		<tr>
			<td>
				img
			</td>
			<td>
				text
			</td>
		</tr>
	</table>
	
	<div class="review">
		<h3>review</h3>
		<div class="innerReview">
			<table>
				<tr>
					<th>
						닉네임
					</th>
					
					<th>
						내용
					</th>
					<th>
						날짜
					</th>			
				</tr>
				
				<tr>
					<td>test</td>
					<td>test</td>
					<td>test</td>
				</tr>
				
								<tr>
					<td>test</td>
					<td>test</td>
					<td>test</td>
				</tr>
								<tr>
					<td>test</td>
					<td>test</td>
					<td>test</td>
				</tr>
								<tr>
					<td>test</td>
					<td>test</td>
					<td>test</td>
				</tr>
				<tr>
					<td>test</td>
					<td>test</td>
					<td>test</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" name="reviewText" id="reviewText">
						<input type="button" onclick="reviewBtn()" id="reviewBtn" value="댓글">
					</td>

				</tr>
			</table>
		</div>
	</div>
	<footer>
		Footer
	</footer>
	
    <!-- 첫 번째 Modal -->
    <div class="modal">
 
      <!-- 첫 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>                         
       	<div id="modalFrame1">
	    <div id="modal" class="modal-overlay">
	        <div class="modal-window">
	            <div class="title">
	                <h2>로그인</h2>
	            </div>
	            <div class="content">
					<form id="loginForm" method="POST" enctype="multipart/form-data">
						<input type="email" name="uEmail" id="uEmail" placeholder="email">
						
						<input type="password" name="uPw" id="uPw" placeholder="비밀번호">
						<p>회원가입</p>
						<p class="lastP">아이디 & 비밀번호 찾기</p>
						<input type="button" onclick="loginBtn()" value="로그인">
					</form>
	                
	            </div>
	        </div>
	    </div>
	</div>
      </div>
    </div>

    <!-- 두 번째 Modal -->
    <div class="modal">
 
        <!-- 두 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>                         
       	<div id="modalFrame1">
	    <div id="modal" class="modal-overlay">
	        <div class="modal-window">
	            <div class="title">
	                <h2>회원가입</h2>
	            </div>
	            <div class="content">
					<form id="registerForm" method="POST" enctype="multipart/form-data">
						<input type="email" name="uEmail" id="userEmail" placeholder="email">
						
						<input type="password" name="uPw" id="userPw" placeholder="비밀번호">

						<input type="password" name="uPw2" id="uPw2" placeholder="비밀번호 확인">
						
						<input type="text" name="uNickName" id="uNickName" placeholder="닉네임">
						
						<input type="text" name="uFirstName" id="uFirstName" placeholder="성">
						<input type="text" name="uLastName" id="uLastName" placeholder="이름">
						
						<h3>성별</h3><br>
						<label for="sex">남자<input type="radio"name="sex" id="uSex" value="m" checked></label>
						<label for="sex">여자<input type="radio"name="sex" id="uSex" value="w"></label><br>
						<input type="button" onClick="regBtn()" value="회원가입">
					</form>
	                
	            </div>
	        </div>
	    </div>
	</div>
      </div>
    </div>

</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
//Modal을 가져옵니다.
var modals = document.getElementsByClassName("modal");
// Modal을 띄우는 클래스 이름을 가져옵니다.
var btns = document.getElementsByClassName("btn");
// Modal을 닫는 close 클래스를 가져옵니다.
var spanes = document.getElementsByClassName("close");
var funcs = [];
 
// Modal을 띄우고 닫는 클릭 이벤트를 정의한 함수
function Modal(num) {
  return function() {
    // 해당 클래스의 내용을 클릭하면 Modal을 띄웁니다.
    btns[num].onclick =  function() {
        modals[num].style.display = "block";
    };
 
    // <span> 태그(X 버튼)를 클릭하면 Modal이 닫습니다.
    spanes[num].onclick = function() {
        modals[num].style.display = "none";
    };
  };
}
 
// 원하는 Modal 수만큼 Modal 함수를 호출해서 funcs 함수에 정의합니다.
for(var i = 0; i < btns.length; i++) {
  funcs[i] = Modal(i);
}
 
// 원하는 Modal 수만큼 funcs 함수를 호출합니다.
for(var j = 0; j < btns.length; j++) {
  funcs[j]();
}
 
// Modal 영역 밖을 클릭하면 Modal을 닫습니다.
window.onclick = function(event) {
  if (event.target.className == "modal") {
      event.target.style.display = "none";
  }
};


function regBtn(){
	
	var uname = $('#uFirstName').val() + $('#uLastName').val();
	

	var data = {
		uemail :$('#userEmail').val(),
		upw :$('#userPw').val(),
		uname :uname,
		unickname :$('#uNickName').val(),
		usex :$('#uSex').val(),
	}


	$.ajax({
	 url:'http://localhost:8080/user/register',
        type: 'POST',
        data: JSON.stringify(data),
        contentType: 'application/json; charset=utf-8',
        error: function () {            
 			alert("실패하셨습니다. 다시 시도해주세요.");
        }, success: function () {
        	alert("회원가입에 성공하셨습니다. 로그인하여 주세요.");
        	modals[1].style.display = "none";
            modals[0].style.display = "block";

        }, beforeSend: function () {
 
        }, complete: function () {
    
        }
});
}

function loginBtn(){
	
	var data = {
		uemail :$('#uEmail').val(),
		upw :$('#uPw').val(),
	}
	

	$.ajax({
	 url:'http://localhost:8080/user/login',
        type: 'POST',
        data: JSON.stringify(data),
        contentType: 'application/json; charset=utf-8',
        error: function () {            
 			
        }, success: function (result) {
        	alert("로그인에 성공하셨습니다.");
            modals[0].style.display = "none";
            
            var resultData = JSON.parse(result);

            window.localStorage.setItem('unickname', resultData.unickname);
            
            document.getElementById("login").textContent = window.localStorage.getItem('unickname');
            document.getElementById("register").textContent = "로그아웃";

           

        }, beforeSend: function () {
 
        }, complete: function () {
    
        }
});
}

window.onload = function(){

	if(window.localStorage.getItem('unickname')!=null){
		document.getElementById('login').textContent=window.localStorage.getItem('unickname');
		document.getElementById('register').textContent= "로그아웃";

	}
}



$('#register').on("click", function(){
	if(document.getElementById('register').textContent == "로그아웃"){
		alert('로그아웃 하였습니다.');
		modals[1].style.display = "none";
		window.localStorage.clear();
		document.getElementById('login').textContent= "로그인";
		document.getElementById('register').textContent= "회원가입";
	}

});

function reviewBtn() {
	console.log($('#reviewText').val());'
}

 </script>
</html>