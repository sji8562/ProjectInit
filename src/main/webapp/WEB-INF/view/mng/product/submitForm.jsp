<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/mng/layout/mngHeader.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://cdn.ckeditor.com/ckeditor5/40.1.0/classic/ckeditor.js"></script>


<link rel="stylesheet" href="/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">대여 물품 등록</h4>
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
                    <form class="form-horizontal mt-4" action="/mng/product/register" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="name">물품명</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="물품명을 입력하세요" required>
                        </div>
                        <div class="form-group">
                            <label for="price">물품가격</label>
                            <input type="number" class="form-control" id="price" name="price" placeholder="물품 가격을 입력하세요" required>
                        </div>
                        <div class="form-group">
                            <label>카테고리</label>
                            <div style="display: flex;">
                                <span style="margin-right: 10px;">
                                    <select class="form-select" aria-label="Disabled select example" id="secondCategoryId" name="secondCategoryId" required>
                                        <c:forEach var="sCategory" items="${sCategory}">
                                            <option value="${sCategory.id}">${sCategory.secondCategoryName}</option>
                                        </c:forEach>
                                    </select>
                                </span>
                                <%--<span>
                                    <select class="form-select" aria-label="Disabled select example">
                                        <option selected>${product.secondCategoryName}</option>
                                    </select>
                                </span>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="file">썸네일</label>
                            <div style="width: 500px;">
                                <input type="file" id="file" name="file">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>물품등급</label>
                            <select class="form-select" aria-label="Disabled select example" name="grade" required>
                                <option value="최상">최상</option>
                                <option value="상">상</option>
                                <option value="중">중</option>
                                <option value="하">하</option>
                                <option value="최하">최하</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>대여/판매여부</label>
                            <select class="form-select" aria-label="Disabled select example" id="status" name="status" required>
                                <option value="1" selected>재고 있음</option>
                                <option value="2" disabled style="color: grey">대여 중</option>
                                <option value="3" disabled style="color: grey">반납 중</option>
                                <option value="4">소독 중</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>제품 상세 설명</label>
                            <div id="container">
                                <textarea id="editor" name="content"></textarea>
                            </div>
                        </div>
                        <button class="btn btn-secondary" onclick="history.back()">뒤로가기</button>
                        <button type="submit" class="btn btn-primary">등록하기</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

</div>

<script>
    ClassicEditor
        .create( document.querySelector( '#editor' ), {
            language: "ko",
            ckfinder: {
                uploadUrl: "/upload/image",
                withCredentials: true
            }
        } )
        .catch( error => {
            console.error( "CK EDITOR ERROR == ", error );
        } );
</script>
<style>
    #container {
        width: 100%;
    }
    .ck-editor__editable[role="textbox"] {
        /* editing area */
        min-height: 500px;
    }
</style>
</body>
</html>
<%@ include file="/WEB-INF/view/mng/layout/mngFooter.jsp" %>