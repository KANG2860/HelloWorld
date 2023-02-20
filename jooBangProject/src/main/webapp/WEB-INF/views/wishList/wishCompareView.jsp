<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/head.jsp" />
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
<script src="/js/chart.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/wishList.css' />">
<title>찜목록 및 비교하기</title>
</head>
<body>
	<c:import url="/WEB-INF/views/top.jsp" />

	<!-- wish section 시작  -->
	<section class="wishContainer">

		<div class="wFilter">
			<!--찜목록 서브 메뉴-->
			<div class="quickmenu">
				<ul class="wishSubMenu">
					<li class="side-menu"><a
						href="<c:url value='/wishList/wishListView'/>">내가 본 방</a></li>
					<hr>
					<li class="side-menu"><a
						href="<c:url value='/wishList/wishLikeView'/>">찜한 방</a></li>
					<hr>
					<li class="side-menu"><a
						href="<c:url value='/wishList/wishCompareView'/>">방 비교하기</a></li>
					<hr>
				</ul>
			</div>
		</div>


		<div class="wTitle">
			<!--찜목록 목록 제목-->
			<div class="center-outer">
				<div class="center-inner">
					<div class="bubbles">
						<h2 class="wishTitle">방 비교하기</h2>
					</div>
				</div>
			</div>
		</div>
		<ul class="wCard">
			<!--찜목록-->
			<c:forEach var="likeView" items="${likeList}">
				<li>
					<div class="mainATeg">
						<a href="/roominfo/${likeView.roomNo}">
							<div>
								<img class="roomImg"
									src="/image/registImg/${fn:split(likeView.roomImage, ',')[0]}"
									width="260" height="200">
							</div>
							<h5>${fn:split(likeView.roomAddress1, ' ')[0]}
								${fn:split(likeView.roomAddress1, ' ')[1]}</h5>
							<h4>
								<span id="line_limit">${likeView.roomName}</span>
							</h4>
							<h5>방 개수: ${likeView.roomBCount} | 화장실 개수:
								${likeView.roomRCount}</h5>
							<h5>
								<fmt:formatNumber value="${likeView.roomRent}" pattern="#,###" />
								￦ / 주
							</h5>
						</a>
					</div>
				</li>
			</c:forEach>
		</ul>
		
		<div id="myChartBox">
			<canvas id="myChart" width="1120" height="400"></canvas>
			<c:forEach var="wish" items="${likeList }">
				<input class="roomName" type="hidden" value="${wish.roomName }">
				<input class="roomRent" type="hidden" value="${wish.roomRent }">
			</c:forEach>
		</div>

		<div class="wPage">
			<!--찜목록 페이징 -->
			<div class="pagePrd">
				<c:forEach begin="1" end="${pageNum}" var="num">
					<span> <a href="/wishList/wishListView/${num}"><button
								class="pageBtn">${num}</button></a>
					</span>
				</c:forEach>
			</div>
		</div>

	</section>



	<!-- wish section 끝 -->

	<footer>
		<c:import url="/WEB-INF/views/footer.jsp" />
	</footer>
</body>
</html>