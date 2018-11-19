<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- 부트스트랩 --%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//code.jquery.com/jquery-3.3.1.js"></script>


<%-- css --%>
<link href="/css/basketproduct.css" rel="stylesheet">

<%-- js --%>
<script src="/js/basketproduct.js"></script>
</head>

<body>
<body style="background-color: #F2F4F7">
    <div class="container">
        <hr color="black" />
        <br>
        <div class="row">

            <!-- 버튼 -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-lg-offset-12">
                        <p>
                             <button type="button" class="btn btn-default btn-lg" id="btn-cl"><a href="/app/classBakt/basketclass">장바구니(클래스)</a></button>
                            <button type="button" class="btn btn-default btn-lg" ><a href="/app/productBakt/basketproduct">장바구니(공예품)</a></button>

                            <span
                                style="font-size: 22px; color: Dodgerblue; position: relative; left: 45%;">
                                <span>장바구니</span> <span><Strong>
                                        ></Strong></span>
                            </span> <span
                                style="font-size: 22px; position: relative; left: 46%;">
                                <span>결제</span> <span><Strong>
                                        ></Strong></span>
                            </span> <span
                                style="font-size: 22px; position: relative; left: 47%;">
                                <span>완료</span>
                            </span>
                        </p>
                    </div>
                </div>
            </div>

            <!-- 장바구니 시작-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-offset-12">
                        <table class="table table-overed">

                            <thead>
                                <tr class="d-flex">
                                    <th class="col-5 text-center">상품</th>
                                    <th class="col-2 text-center">가격</th>
                                    <th class="col-1 text-center">수량</th>
                                    <th class="col-1 text-center">배송료</th>
                                    <th class="col-2 text-center">결제금액</th>
                                    <th class="col-1"> </th>
                                </tr>

                            </thead>

                            <tbody>
                            <c:forEach items="${basketList }" var="r">
                                <tr class="product d-flex">
                                    <td class="col-5">
                                        <div class="media">
                                            <a
                                                class="thumbnail pull-left"
                                                href="#"> <img
                                                class="media-object"
                                                src="${r.product.phot }"
                                                style="width: 100px; height: 100px;">
                                            </a>
                                            <div class="media-body">
                                                <h4
                                                    class="media-heading">
                                                    <a href="#">${r.product.titl }</a>
                                                </h4>
                                                <h5
                                                    class="media-heading">
                                                    판매자 <a href="#">${r.mentee.nick }</a>
                                                </h5>
                                                <span></span><span
                                                    class="text-warning"><strong>인당
                                                        최대 수량: 1개</strong></span>
                                            </div>
                                        </div>
                                    </td>
                                    <td
                                        class="product-price col-2 text-center">${r.product.pric }</td>
                                    <td
                                        class="product-quantity col-1 text-center"><input
                                        type="number" name="produc1"
                                        min="1" max="10" value="${r.cnt }"></td>
                                    <td class="del col-1 text-center">${r.product.deli }</td>
                                    <td
                                        class="product-line-price col-2 text-center">${(r.product.pric * r.cnt)+r.product.deli }</td>
                                    <td class="product-removal col-1"
                                        id="del-button">
                                        <button type="button"
                                            class="btn btn-danger" value="${r.no}">삭제
                                        </button>
                                    </td>
                                </tr>

                                </c:forEach>
                            </tbody>
                        </table>

                        <!-- 계산 -->
                        <div class="container">
                            <div class="row">
                                <div class="total col-lg-12">
                                    <div class="totals">
                                        <div
                                            class="totals-item totals-item-total">
                                            <label> 최종 결제 금액</label>
                                            <div class="totals-value"
                                                id="cart-total">0</div>
                                        </div>
                                    </div>

                                    <div class="btn-all">
                                        <button
                                            class="checkout btn btn-light">장바구니
                                            결제</button>
                                    </div>

                                </div>
                                <!-- 계산 12-->
                            </div>
                            <!-- 계산 row-->
                        </div>
                        <!-- 계산 container-->

                    </div>

                </div>
                <!-- 장바구니 row-->
            </div>
            <!-- 장바구니 container-->


        </div>
        <!-- main row-->
    </div>
    <!-- main container-->
</body>

</body>
</html>