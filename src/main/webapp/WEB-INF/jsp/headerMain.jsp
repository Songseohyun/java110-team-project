<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link href="/css/mainheader.css" rel="stylesheet">

<script>
function mover(){
    var getwid = $('#dropdown').css('width');
    if(getwid != undefined){
        var getcontentwid = $('#dropdown-content').css('width');
        var parsewid = getwid.replace('px','');
        var parsecontentwid = getcontentwid.replace('px','');
        var resultwid = parsecontentwid-parsewid;
        $('#dropdown-content').css('left',-(resultwid/2) + 'px');
    }
}

</script>
</head>
<nav class="navbar navbar-expand-lg mx-auto fixed-top mb-2" id="mainNav">
	<a class="navbar-brand" href="/app/mainpage/mainpage">하루</a>
	<div class="search" style="position: relative;">
			<input type="text" class="search-form" autocomplete="off" placeholder="클래스 또는 멘토 검색"> 
            <a href="#" onclick="console.log('123')"><i class="fas fa-search fa-2x"></i></a>	
	</div> 
	<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
		data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		Menu <i class="fas fa-bars"></i>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav ml-auto mr-0">
			<li class="nav-item" id="dropdownLI">
				<div id="row">

					<c:choose>
						<c:when test="${sessionScope.loginUser eq null}">
							<a class="nav-link" href="../auth/form"> <i class="fas fa-power-off fa-2x"></i><br>로그인
							</a>

						</c:when>
						<c:otherwise>
							<div class="dropdown" id="dropdown">
								<img onload="mover()" src="${sessionScope.loginUser.phot}" alt="userIMG"
									style="margin: 8px 23px; width: 56px; height: 56px; border-radius: 28px; border: 3px solid #ec5453"><br>


								
								<div class="dropdown-content text-left" id="dropdown-content">
									<a href="../mypage/mypage"><span><i class="fas fa-user"></i></span><span class="ml-3">마이페이지</span></a>
									<a href="../master/notice"><span><i class="fas fa-bell"></i></span><span class="ml-3">알림</span></a>
									<hr class="Hhr"/>
									<a href="../auth/logout"><span><i class="fas fa-sign-out-alt"></i></span><span class="ml-3">로그아웃</span></a>
								</div>
							</div>

						</c:otherwise>
					</c:choose>

				</div>
			</li>


			<li class="nav-item" id="getSizeLI">
				<div id="row">
					<c:choose>
						<c:when test="${sessionScope.loginUser eq null}">
							<a class="nav-link " href="../mentee/signup"> <i class="fas fa-user-plus fa-2x"></i></i><br>회원가입
							</a>
						</c:when>
						
						<c:otherwise>
							<a class="nav-link " href="../class/basket"> <i class="fas fa-shopping-cart fa-2x"></i><br>장바구니
							</a>
						</c:otherwise>
					</c:choose>
				</div>
			</li>
			<li class="nav-item">
				<div id="row">
				<c:choose>
                        <c:when test="${sessionScope.loginUser eq null}">
                        </c:when>
                        
                        <c:otherwise>
                            <a class="nav-link" href="../class/like"> <i class="fas fa-star fa-2x"></i><br>찜클래스
                            </a>
                        </c:otherwise>
                    </c:choose>
				</div>
			</li>
		</ul>
	</div>
</nav>

</html>