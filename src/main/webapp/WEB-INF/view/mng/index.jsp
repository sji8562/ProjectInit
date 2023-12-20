<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/mng/layout/mngHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<link href="/assets/libs/chartist/dist/chartist.min.css"--%>
<%--      rel="stylesheet">--%>
<%--<script src="/assets/libs/chartist/dist/chartist.min.js"></script>--%>
<%--<script src="/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>--%>
<%--<script src="/dist/js/pages/dashboards/dashboard1.js"></script>--%>
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">Dashboard</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                                </ol>
                            </nav>
                        </div>
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
                <!-- Email campaign chart -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">월별 실적</h4>
                                <div class=""></div>
                                <div class="sales ct-charts mt-3"></div>
                                <input type="hidden" id="dtos" value="${dtos}">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title mb-1">월별 건수</h5>
                                <h3 class="font-light">총 ${payOff} 원</h3>
                                <div class="mt-3 text-center">
                                    <div id="earnings"></div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-0">미해결 신청현황</h4>
                                <h2 class="font-light">${countDTO.totalCount}건</h2>
                                <div class="mt-4">
                                    <div class="row text-center">
                                        <div class="col-4 border-right">
                                            <h4 class="mb-0">${countDTO.rentCount}</h4>
                                            <span class="font-14 text-muted">대여 신청</span>
                                        </div>
                                        <div class="col-4 border-right">
                                            <h4 class="mb-0">${countDTO.saleCount}</h4>
                                            <span class="font-14 text-muted">구매 신청</span>
                                        </div>
                                        <div class="col-4">
                                            <h4 class="mb-0">${countDTO.purchaseCount}</h4>
                                            <span class="font-14 text-muted">판매 신청</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Email campaign chart -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Ravenue - page-view-bounce rate -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Latest Sales</h4>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th class="border-top-0">NAME</th>
                                            <th class="border-top-0">STATUS</th>
                                            <th class="border-top-0">DATE</th>
                                            <th class="border-top-0">PRICE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                        <c:when test="${statusDTO != null }">
                                            <c:forEach var="statusDTO" items="${statusDTO}">
                                                    <tr>
                                                        <td class="txt-oflo">${statusDTO.userName}</td>
                                                        <c:choose>
                                                            <c:when test="${statusDTO.transactionType == 'Rent' }">
                                                                <c:choose>
                                                                    <c:when test="${statusDTO.status == 1 }">
                                                                        <td><span class="label label-success label-rounded">${statusDTO.transactionType}</span> </td>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <td><span class="label label-danger label-rounded">${statusDTO.transactionType}</span> </td>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:when>
                                                            <c:when test="${statusDTO.transactionType == 'Sale' }">
                                                                <c:choose>
                                                                    <c:when test="${statusDTO.status == 1 }">
                                                                        <td><span class="label label-info label-rounded">${statusDTO.transactionType}</span> </td>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <td><span class="label label-danger label-rounded">${statusDTO.transactionType}</span> </td>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:when>
                                                            <c:when test="${statusDTO.transactionType == 'Purchase' }">
                                                                <c:choose>
                                                                    <c:when test="${statusDTO.status == 1 }">
                                                                        <td><span class="label label-purple label-rounded">${statusDTO.transactionType}</span> </td>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <td><span class="label label-danger label-rounded">${statusDTO.transactionType}</span> </td>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:when>
                                                            <c:otherwise>
                                                                그런 종류는 없습니다.
                                                            </c:otherwise>
                                                        </c:choose>


                                                        <td class="txt-oflo">${statusDTO.createdAt}</td>
                                                        <td><span class="font-medium">${statusDTO.price}</span></td>
                                                    </tr>

                                            </c:forEach>

                                        </c:when>
                                        <c:otherwise>
                                            내역이 없습니다.
                                        </c:otherwise>
                                    </c:choose>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Ravenue - page-view-bounce rate -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Recent Comments</h4>
                            </div>
                            <div class="comment-widgets" style="height:430px;">
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row mt-0">
                                    <div class="p-2">
                                        <img src="/assets/images/users/1.jpg" alt="user" width="50"
                                            class="rounded-circle">
                                    </div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">James Anderson</h6>
                                        <span class="mb-3 d-block">Lorem Ipsum is simply dummy text of the printing
                                            and type setting industry. </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-end">April 14, 2021</span>
                                            <span class="label label-rounded label-primary">Pending</span>
                                            <span class="action-icons">
                                                <a href="javascript:void(0)">
                                                    <i class="ti-pencil-alt"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-check"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-heart"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2">
                                        <img src="/assets/images/users/4.jpg" alt="user" width="50"
                                            class="rounded-circle">
                                    </div>
                                    <div class="comment-text active w-100">
                                        <h6 class="font-medium">Michael Jorden</h6>
                                        <span class="mb-3 d-block">Lorem Ipsum is simply dummy text of the printing
                                            and type setting industry. </span>
                                        <div class="comment-footer ">
                                            <span class="text-muted float-end">April 14, 2021</span>
                                            <span class="label label-success label-rounded">Approved</span>
                                            <span class="action-icons active">
                                                <a href="javascript:void(0)">
                                                    <i class="ti-pencil-alt"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="icon-close"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-heart text-danger"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2">
                                        <img src="/assets/images/users/5.jpg" alt="user" width="50"
                                            class="rounded-circle">
                                    </div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">Johnathan Doeting</h6>
                                        <span class="mb-3 d-block">Lorem Ipsum is simply dummy text of the printing
                                            and type setting industry. </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-end">April 14, 2021</span>
                                            <span class="label label-rounded label-danger">Rejected</span>
                                            <span class="action-icons">
                                                <a href="javascript:void(0)">
                                                    <i class="ti-pencil-alt"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-check"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-heart"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row mt-0">
                                    <div class="p-2">
                                        <img src="/assets/images/users/2.jpg" alt="user" width="50"
                                            class="rounded-circle">
                                    </div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">Steve Jobs</h6>
                                        <span class="mb-3 d-block">Lorem Ipsum is simply dummy text of the printing
                                            and type setting industry. </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-end">April 14, 2021</span>
                                            <span class="label label-rounded label-primary">Pending</span>
                                            <span class="action-icons">
                                                <a href="javascript:void(0)">
                                                    <i class="ti-pencil-alt"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-check"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-heart"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- column -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Temp Guide</h4>
                                <div class="d-flex align-items-center flex-row mt-4">
                                    <div class="display-5 text-info"><i class="wi wi-day-showers"></i>
                                        <span>73<sup>Â°</sup></span></div>
                                    <div class="ms-2">
                                        <h3 class="mb-0">Saturday</h3><small>Ahmedabad, India</small>
                                    </div>
                                </div>
                                <table class="table no-border mini-table mt-3">
                                    <tbody>
                                        <tr>
                                            <td class="text-muted">Wind</td>
                                            <td class="font-medium">ESE 17 mph</td>
                                        </tr>
                                        <tr>
                                            <td class="text-muted">Humidity</td>
                                            <td class="font-medium">83%</td>
                                        </tr>
                                        <tr>
                                            <td class="text-muted">Pressure</td>
                                            <td class="font-medium">28.56 in</td>
                                        </tr>
                                        <tr>
                                            <td class="text-muted">Cloud Cover</td>
                                            <td class="font-medium">78%</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <ul class="row list-style-none text-center mt-4">
                                    <li class="col-3">
                                        <h4 class="text-info"><i class="wi wi-day-sunny"></i></h4>
                                        <span class="d-block text-muted">09:30</span>
                                        <h3 class="mt-1">70<sup>Â°</sup></h3>
                                    </li>
                                    <li class="col-3">
                                        <h4 class="text-info"><i class="wi wi-day-cloudy"></i></h4>
                                        <span class="d-block text-muted">11:30</span>
                                        <h3 class="mt-1">72<sup>Â°</sup></h3>
                                    </li>
                                    <li class="col-3">
                                        <h4 class="text-info"><i class="wi wi-day-hail"></i></h4>
                                        <span class="d-block text-muted">13:30</span>
                                        <h3 class="mt-1">75<sup>Â°</sup></h3>
                                    </li>
                                    <li class="col-3">
                                        <h4 class="text-info"><i class="wi wi-day-sprinkle"></i></h4>
                                        <span class="d-block text-muted">15:30</span>
                                        <h3 class="mt-1">76<sup>Â°</sup></h3>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
<%--            <script>--%>



<%--                var chart = new Chartist.Line('.sales', {--%>
<%--                    labels: labels,--%>
<%--                    series: series--%>

<%--                }, {--%>
<%--                    low: 0,--%>
<%--                    high: 48,--%>
<%--                    showArea: true,--%>
<%--                    fullWidth: true,--%>
<%--                    plugins: [--%>
<%--                        Chartist.plugins.tooltip()--%>
<%--                    ],--%>
<%--                    axisY: {--%>
<%--                        onlyInteger: true,--%>
<%--                        scaleMinSpace: 40,--%>
<%--                        offset: 20,--%>
<%--                        labelInterpolationFnc: function(value) {--%>
<%--                            return (value/10 ) + "원";--%>
<%--                        }--%>
<%--                    },--%>

<%--                });--%>

<%--                var chart = [chart];--%>
<%--            </script>--%>
<%@ include file="/WEB-INF/view/mng/layout/mngFooter.jsp" %>