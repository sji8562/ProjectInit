<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/mng/layout/mngHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/css/style.css">

<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">물품 등록</h4>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-12">
                <div class="card card-body">
<%--                    <h4 class="card-title">물품 번호 ${product.id}번</h4>--%>
                    <%--<h5 class="card-subtitle"> All bootstrap element classies </h5>--%>
                    <form class="form-horizontal mt-4" action="/mng/product" method="post">
                        <div class="form-group">
                            <label>물품명</label>
                            <input type="text" class="form-control"
                                   placeholder="물품명을 입력하세요" id="pName" name="name">
                        </div>
                        <div class="form-group">
                            <label>물품가격</label>
                            <input type="text"
                                   placeholder="물품가격을 입력하세요" class="form-control" name="price">
                        </div>
                        <div class="form-group">
                            <label for="example-email">카테고리</label>
                            <div>${ fCategory }</div>
                            <div>${ sCategory }</div>

                            <div style="display: flex;">
									<span style="margin-right: 10px;">
										<select class="form-select" aria-label="Disabled select example" name="firstCategory">
											<option value="">Choose...</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
										</select>
									</span>
                                <span>
										<select class="form-select" aria-label="Disabled select example" name="secondCategory">
											<option selected></option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
										</select>
									</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>썸네일</label>
                            <div style="width: 500px;">
                                <p>여기에 file input</p>
                                <input type="file" name="file">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>물품등급</label>
                            <select class="form-select" aria-label="Disabled select example" name="grade">
                                <option value="최상" selected>최상</option>
                                <option value="상">상</option>
                                <option value="중">중</option>
                                <option value="하">하</option>
                                <option value="최하">최하</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>대여/판매여부</label>
                            <select class="form-select" aria-label="Disabled select example" name="status" disabled>
                                <option selected value="1">재고 있음</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>제품 상세 설명</label>
                            <%-- TODO text editor --%>
                            <textarea class="form-control" rows="5" name="content"></textarea>
                        </div>
                    </form>
                </div>
                <button onclick="history.back()">뒤로가기</button>
                <button onclick="#">등록하기</button>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right sidebar -->
        <!-- ============================================================== -->
        <!-- .right-sidebar -->
        <!-- ============================================================== -->
        <!-- End Right sidebar -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->
    <footer class="footer text-center">
        All Rights Reserved by Nice admin. Designed and Developed by
        <a href="https://www.wrappixel.com">WrapPixel</a>.
    </footer>
    <!-- ============================================================== -->
    <!-- End footer -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="../../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
<!--Wave Effects -->
<script src="../../dist/js/waves.js"></script>
<!--Menu sidebar -->
<script src="../../dist/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="../../dist/js/custom.min.js"></script>

</body>
</html>
<%@ include file="/WEB-INF/view/mng/layout/mngFooter.jsp" %>