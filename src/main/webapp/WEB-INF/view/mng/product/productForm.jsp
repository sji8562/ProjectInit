<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/mng/layout/mngHeader.jsp" %>

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
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card card-body">
                            <form class="form-horizontal mt-4">
                                <div class="form-group">
                                    <label>Default Text <span class="help"> e.g. "George deo"</span></label>
                                    <input type="text" class="form-control" value="George deo...">
                                </div>
                                <div class="form-group">
                                    <label for="example-email">Email <span class="help"> e.g.
                                            "example@gmail.com"</span></label>
                                    <input type="email" id="example-email" name="example-email" class="form-control"
                                        placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" value="password">
                                </div>
                                <div class="form-group">
                                    <label>Placeholder</label>
                                    <input type="text" class="form-control" placeholder="placeholder">
                                </div>
                                <div class="form-group">
                                    <label>Text area</label>
                                    <textarea class="form-control" rows="5"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Read only input</label>
                                    <input class="form-control" type="text" placeholder="Readonly input hereâ¦" readonly>
                                </div>
                                <div class="form-group">
                                    <fieldset disabled>
                                        <label for="disabledTextInput">Disabled input</label>
                                        <input type="text" id="disabledTextInput" class="form-control"
                                            placeholder="Disabled input">
                                    </fieldset>
                                </div>
                                <div class="form-group row pt-3">
                                    <div class="col-sm-4">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="customCheck1">
                                            <label class="form-check-label mb-0" for="customCheck1">Check this custom
                                                checkbox</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="customCheck2">
                                            <label class="form-check-label mb-0" for="customCheck2">Check this custom
                                                checkbox</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="customCheck3">
                                            <label class="form-check-label mb-0" for="customCheck3">Check this custom
                                                checkbox</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-check">
                                            <input type="radio" id="customRadio1" name="customRadio"
                                                class="form-check-input">
                                            <label class="form-check-label mb-0" for="customRadio1">Toggle this custom
                                                radio</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" id="customRadio2" name="customRadio"
                                                class="form-check-input">
                                            <label class="form-check-label mb-0" for="customRadio2">Toggle this custom
                                                radio</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Input Select</label>
                                    <select class="form-select shadow-none col-12" id="inlineFormCustomSelect">
                                        <option selected>Choose...</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Default file upload</label>
                                    <input type="file" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Custom File upload</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Upload</span>
                                        </div>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="inputGroupFile01">
                                            <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Helping text</label>
                                    <input type="text" class="form-control" placeholder="Helping text">
                                    <span class="help-block"><small>A block of help text that breaks onto a new line and
                                            may extend beyond one line.</small></span> </div>
                            </form>
                        </div>
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
            
</body>

</html>
<%@ include file="/WEB-INF/view/mng/layout/mngFooter.jsp" %>