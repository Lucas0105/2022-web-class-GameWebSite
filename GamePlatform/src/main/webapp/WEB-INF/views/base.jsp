<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
 	
<!DOCTYPE html>

<html>
<head>
<link href="${path}/resources/css/base.css" rel="stylesheet"/>

<meta charset="UTF-8">
<title>Game Platform</title>
</head>
<header>
	<section>
		<div class = "logo">
			Game Platform
		</div>
		
		<div class = "search">
			<form method="GET">
				<input type = "text" placeholder="게임 검색"></input>
			</form>
		</div>
		
		<table>
			<tr>
				<td>로그인</td>
				<td>회원가입</td>
			</tr>
		</table>
			
	</section>

	<nav>
		<ul>
			<li><a href="#">새로운 게임</a></li>
			<li><a href="#">커뮤니티</a></li>
			<li><a href="#">랭크</a></li>
			<li><a href="#">다운로드</a></li>
			<li><a href="#">고객센터</a></li>
		</ul>
	</nav>
	
</header>
<body>
	<div id="mainDoc">
	
		<aside>
			<table>
				<tr>
					<th>category</th>
				</tr>
				<tr>
					<td>
						<p>슈팅</p>
						<p>격투</p>
						<p>전략 & RPG</p>
						<p>레이싱</p>
						<p>스포츠</p>
						<p>시뮬레이션</p>
						<p>액션</p>
						<p>2인용</p>
						<p>전쟁</p>
					</td>
				</tr>
			</table>
		</aside>
		
		<section>
			<article class="gameFrame">
				<h3>recommend game</h3>
				<div class="gameBox">
					게임1
				</div>
				
				<div class="gameBox">
					게임2
				</div>
				
				<div class="gameBox">
					게임3
				</div>
			</article>
			
			<article class="gameFrame">
				<h3>popular game</h3>
				<div class="gameBox">
					게임1
				</div>
				
				<div class="gameBox">
					게임2
				</div>
				
				<div class="gameBox">
					게임3
				</div>
			</article>
		</section>
	</div>
	
	<footer>
		Footer
	</footer>
</body>
</html>