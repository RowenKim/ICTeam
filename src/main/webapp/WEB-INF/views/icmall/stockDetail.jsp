<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품상세보기</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp" />
<hr>

 <section id="product-page" class="product-page p-b-0">
            <div class="container">
                <div class="product">
                    <div class="row m-b-40">
                        <div class="col-lg-5">
                            <div class="product-image" id="product-image-test">
                                <!-- 이미지파일 -->
                                     <a href="#"><img alt="Shop product image!" src="images/shop/products/10.jpg"></a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-description">
                                <div class="product-title">
                                    <h3>제수용 친환경 시금치 300g(상품 uid 해당하는 st_name 가져오기)</h3>
                                </div><br><br>
                                <div><h3>5,900원(st_price)</h3></div><br><!-- st_price 값을 가져오기 -->
                                <hr>
                                <table>
                                	<tr>
                                		<th><h4>판매단위:</h4></th>
                                		<td class="sd_td">1봉/1팩 ....(ERD 추가)</td>
                                	</tr>
                                </table>
                                <table>
                                	<tr>
                                		<th><h4>원산지:</h4></th>
                                		<td class="sd_td"> 한국/미국.....(ERD 추가)</td>
                                	</tr>
                                </table>
                                <br>
                                <table>
                                	<tr>
                                		<th><h4>구매수량:</h4></th>
                                		<td class="sd_td">
                                		<div class="cart-product-quantity">
                                        <div class="quantity m-l-5">
                                            <input type="button" class="minus" value="-" id="decreaseQuantity">
                                            <input type="text" class="qty" value="1" id="productStock">
                                            <input type="button" class="plus" value="+" id="increasQuantity">
                                        </div>
                                        </div>
                                        </td>
                                	</tr>
                                </table>
                                <hr>
                            </div>
                            <div id="sd_secPrice"><span>총 상품금액</span>:<h3 id="sd_h3">5,900원</h3></div><!-- st_price와 productStock 곱하기 -->
                            <br><br><br>
                                <div class="col-lg-12">
                                    <button type="submit" id="sd_btn"><span id="sd_basket_letter"><b>장바구니 담기</b></span></button>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
		</section>	
			


<br>
<br>
<jsp:include page="footer.jsp" />
<script src="${pageContext.request.contextPath }/JS/won.js"></script>
</body>
</html>