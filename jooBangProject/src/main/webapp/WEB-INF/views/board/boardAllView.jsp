<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체</title>
		<c:import url="/WEB-INF/views/head.jsp"/>
				<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
		    <link rel="stylesheet" href="<c:url value='/css/board.css' />">
	
</head>
	
	<body>
		<nav id="nav">
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
    <ul id="ul">
 		 <li class="side-menu"><a href="<c:url value='/board/boardListAll/${1}'/>">전체글보기</a></li><hr>
 		 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${2}'/>">공지사항</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${3}'/>">자유게시판</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/bestBoard/${4}'/>">베스트게시판</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${5}'/>">살림나눔장터</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${6}'/>">장터</a></li><hr>  	  
	</ul>

        <div id="wrap">   	
        <span id="ctgName">${brdList[0].ctgName } </span>          
    	<div id="search">
           <a href="<c:url value='/board/boardSearchForm/'/>"> <button type="submit" id="boardsubmit"> <i class="fa fa-search"></i></button></a>
        </div>                  	
		<a href="<c:url value='/board/boardInsert/${ctgNo}'/>"><button id="insertBtn">글작성</button></a>
			<table class="table table-striped table-hover">
			<thead>
					<tr>
						<th>번호</th>
						<th class="title1">제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
			</thead>
			<tbody>
					<c:forEach var="brd" items="${brdList }">
			           
			            <tr>         
			            <td>${brd.brdNo }</td>
			               <td class="title1" ><a href="<c:url value='/board/boardDetailView/${brd.brdNo}'/>" >${brd.brdTitle }</a></td>
			               <td>${brd.brdWriter }</td>			                    		               
			               <td><fmt:formatDate value="${brd.brdDate }" pattern="yyyy-MM-dd"/></td>
			               <td>${brd.brdViewCnt }</td>	          		                    		               	               
			            </tr>
			         </c:forEach>
			           </tbody>
				</table><br><br>
				<div id="searchResultBox"></div>
			</div>
	</body>
</html>
