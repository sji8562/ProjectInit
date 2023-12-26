<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<!-- Summernote CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
	integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg="
	crossorigin="anonymous">
<style>
@media ( min-width : 990px) {
	#hambuerBtn {
		display: none;
		font-size: 24px;
	}
}

@media ( max-width : 800px) {
	.size {
		display: none;
	}
}

#hamburger_menu {
	overflow-y: scroll;
}

/*  	#hamburger_menu::-webkit-scrollbar{ */
/*  		display: none; */
/*  	} */
</style>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script> -->
<!-- <script src="/js/wow.min.js"></script> -->
<header class="header trans_300">

	<!-- Main Navigation -->
	<div class="main_nav_container">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-right">
					<div class="logo_container">
						<a href="/"> <img src="/images/Logo.png" width="100"
							height="100" style="margin-left: -70px"></a>
					</div>

					<nav class="navbar">
						<ul class="navbar_menu">
							<li class="nav-item dropdown"><a
								href="/product/categories/mobile">빅사이즈장난감</a>
								<div class="dropdown-menu m-0">
									<a href="/product/categories/mobile" class="dropdown-item">모빌/유아침대</a>
									<a href="/product/categories/bouncer" class="dropdown-item">바운서</a>
									<a href="/product/categories/saucer" class="dropdown-item">쏘서/점프앤런</a>
									<a href="/product/categories/learningHome"
										class="dropdown-item">베베블럭/러닝홈</a> <a
										href="/product/categories/walker" class="dropdown-item">보행기/부스터</a>
								</div></li>
							<li class="nav-item dropdown"><a
								href="/product/categories/m00to06">스몰사이즈장난감</a>
								<div class="dropdown-menu m-0">
									<a href="/product/categories/m00to06" class="dropdown-item">3개월부터</a>
									<a href="/product/categories/m06to12" class="dropdown-item">6개월부터</a>
									<a href="/product/categories/m12to24" class="dropdown-item">12개월부터</a>
									<a href="/product/categories/m24to36" class="dropdown-item">24개월부터</a>
								</div></li>
							<li class="nav-item dropdown"><a
								href="/product/categories/appliance">유아가전제품</a>
								<div class="dropdown-menu m-0">
									<a href="/product/categories/appliance" class="dropdown-item">유아가전제품</a>
									<a href="/product/categories/applianceETC"
										class="dropdown-item">기타가전제품</a>
								</div></li>
							<li class="nav-item dropdown"><a
								href="/product/categories/isofix">카시트/유모차/아기띠</a>
								<div class="dropdown-menu m-0">
									<a href="/product/categories/isofix" class="dropdown-item">카시트</a>
									<a href="/product/categories/stroller" class="dropdown-item">유모차</a>
									<a href="/product/categories/wrapCarrier" class="dropdown-item">아기띠</a>
								</div></li>
							<li class="nav-item dropdown"><a
								href="/product/categories/mater">산모용품</a>
								<div class="dropdown-menu m-0">
									<a href="/product/categories/mater" class="dropdown-item">유축기/마사지기</a>
								</div></li>
							<li class="nav-item dropdown"><a
								href="/product/categories/bookTouch">그림책</a>
								<div class="dropdown-menu m-0">
									<a href="/product/categories/bookTouch" class="dropdown-item">촉감책</a>
									<a href="/product/categories/bookBW" class="dropdown-item">초점책</a>
									<a href="/product/categories/bookPic" class="dropdown-item">그림책</a>
									<a href="/product/categories/bookTail" class="dropdown-item">동화책</a>
								</div></li>
							<%-- <c:choose>
                                <c:when test="${firstCategories != null}">
                                    <c:forEach var="firstCategory" items="${firstCategories}">
                                        <li class="nav-item dropdown">
                                            <a href="/product/${firstCategory.id}/categories"
                                               class="nav-link dropdown-toggle">${firstCategory.firstCategoryName}</a>
                                            <div class="dropdown-menu m-0">
                                                <c:choose>
                                                    <c:when test="${secondCategories != null}">
                                                        <c:forEach var="secondCategory" items="${secondCategories}">
                                                            <c:choose>
                                                                <c:when test="${secondCategory.firstCategoryId == firstCategory.id}">
                                                                    <c:forEach var="nestedItem"
                                                                               items="${secondCategory.secondCategoryName}">
                                                                       /${firstCategories.id}/${secondCategory.id}
                                                                        <a href="/product/${firstCategory.id}/categories/${secondCategory.id}"
                                                                           class="dropdown-item">${nestedItem}</a>

                                                                    </c:forEach>
                                                                </c:when>
                                                            </c:choose>
                                                        </c:forEach>
                                                    </c:when>
                                                </c:choose>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </c:when>
                            </c:choose> --%>



							<li class="nav-item dropdown"><a href="/customer/contact"
								class="nav-link dropdown-toggle">고객센터</a>
								<div class="dropdown-menu m-0">
									<a href="/customer/contact?type=1" class="dropdown-item">공지사항</a>
									<a href="/customer/contact?type=2" class="dropdown-item">FAQ</a>
									<a href="/customer/contact?type=3" class="dropdown-item">1:1문의</a>
									<a href="/customer/contact?type=4" class="dropdown-item">상품질문</a>
								</div></li>
						</ul>

						<ul class="navbar_user">

							<!-- 								모달창 -->
							<li><butaton type="button" data-bs-toggle="modal"
									data-bs-target="#exampleModal" data-bs-whatever="@fat"
									style="cursor:pointer">
								<i class="fa fa-search" aria-hidden="true"></i> </butaton></li>

							<c:choose>
								<c:when test="${sessionScope.principal != null }">
									<!-- 유저 아이콘 -->
									<li><a href="/mypage/main"><i class="fa fa-user"
											aria-hidden="true"></i></a></li>

									<!-- 장바구니아이콘 -->
									<li class="checkout "><a href="/cart"> <i
											class="fa fa-shopping-cart" aria-hidden="true"></i> <span
											id="checkout_items" class="checkout_items">${countItemCart}</span>
									</a></li>
									<li><a href="/user/logout">로그아웃</a></li>

								</c:when>

								<c:otherwise>
									<a class="size border-right" href="/user/signIn"
										style="color: black">로그인</a>&nbsp;&nbsp;
                                    <a class="size" href="/user/signUp"
										style="color: black">회원가입</a>

								</c:otherwise>

							</c:choose>
						</ul>
						<div class="hamburger_container" id="hambuerBtn">
							<i class="fa fa-bars fa-lg" style="display: inline; cursor: pointer">></i>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>



</header>
<div class="fs_menu_overlay"></div>
<div class="hamburger_menu">
	<div class="hamburger_close">
		<i class="fa fa-times" aria-hidden="true" style="cursor: pointer"></i>
	</div>
	<div class="hamburger_menu_content text-right">
		<ul class="menu_top_nav">
			<li class="menu_item"><a href="/">home</a></li>
			<li class="menu_item has-children"><c:choose>
					<c:when test="${sessionScope.principal != null }">
						<a href="#"> ${sessionScope.principal.userName }님 환영합니다 <i
							class="fa fa-angle-down"></i>
						</a>
						<ul class="menu_selection">
							<li><a href="/mypage/main"><i class="fa fa-columns"></i>마이페이지</a></li>
							<li><a href="/user/logout"><i class="fa fa-sign-out"></i>로그아웃</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<a href="#">로그인<i class="fa fa-angle-down"></i>
						</a>
						<ul class="menu_selection">
							<li><a href="#"><i class="fa fa-sign-in"></i>로그인</a></li>
							<li><a href="#"><i class="fa fa-user-plus"></i>회원가입</a></li>
						</ul>
					</c:otherwise>
				</c:choose></li>

			<li class="menu_item has-children"><a
				href="/product/categories/mobile"> 빅사이즈 장난감 <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="/product/categories/mobile">모빌/유아침대</a></li>
					<li><a href="/product/categories/bouncer">바운서</a></li>
					<li><a href="/product/categories/saucer">쏘서/점프앤런</a></li>
					<li><a href="/product/categories/learningHome">베베블럭/러닝홈</a></li>
					<li><a href="/product/categories/walker">보행기/부스터</a></li>
				</ul></li>
			<li class="menu_item has-children"><a
				href="/product/categories/m00to06"> 스몰사이즈 장난감 <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="/product/categories/m00to06">3~6개월</a></li>
					<li><a href="/product/categories/m06to12">6~12개월</a></li>
					<li><a href="/product/categories/m12to24">12~24개월</a></li>
					<li><a href="/product/categories/m24to36">24개월~</a></li>
				</ul></li>
			<li class="menu_item has-children"><a
				href="/product/categories/appliance"> 유아가전제품 <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="/product/categories/appliance">유아가전제품</a></li>
					<li><a href="/product/categories/applianceETC">기타가전제품</a></li>
				</ul></li>
			<li class="menu_item has-children"><a
				href="/product/categories/isofix"> 유모차/카시트/아기띠 <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="/product/categories/stroller">유모차</a></li>
					<li><a href="/product/categories/isofix">카시트</a></li>
					<li><a href="/product/categories/wrapCarrier">아기띠</a></li>
				</ul></li>
			<li class="menu_item has-children"><a
				href="/product/categories/mater"> 산모용품 <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="/product/categories/mater">유축기</a></li>
				</ul></li>
			<li class="menu_item has-children"><a
				href="/product/categories/bookTouch"> 책 <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="/product/categories/bookTouch">촉감책</a></li>
					<li><a href="/product/categories/bookBW">초점책</a></li>
					<li><a href="/product/categories/bookPic">그림책</a></li>
					<li><a href="/product/categories/bookTail">동화책</a></li>
				</ul></li>
			<li class="menu_item has-children"><a href="#"> 고객센터 <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="/customer/contact?type=1">공지사항</a></li>
					<li><a href="/customer/contact?type=2">FAQ</a></li>
					<li><a href="/customer/contact?type=3">1:1문의</a></li>
					<li><a href="/customer/contact?type=4">상품문의</a></li>
				</ul>
		</ul>

	</div>
</div>
<!-- 모달창 -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header"></div>
			<div class="modal-body">
				<form action="/product/search">
					<div class="mb-3">
						<input type="text" class="form-control" name="keyword">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal" style="cursor: pointer">닫기</button>
						<button type="submit" class="btn btn-primary"
							style="cursor: pointer">검색하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- 모달창 끝 -->