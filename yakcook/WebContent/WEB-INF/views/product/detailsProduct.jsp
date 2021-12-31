<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 정보</title>
<link rel="stylesheet" href="/yakcook/resources/css/product/searchProduct.css">
<script src="https://kit.fontawesome.com/77be500183.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="wrap">
        <div class="categoryHorizon">
            <div class="categoryHorizon_title">제품 상세 정보</div>
        </div>
        
        <!-- 제품이미지, 제품 설명, 가격 수량 구매하기, 장바구니 추가 버튼  -->
        <!-- dbdbdbdbdbdb -->
        <div class="detailsProduct_contents">
            <div class="dp_productImg">
                <div>
                    <a href="#"><img src="35.jpeg"></a>
                </div>
                <div>
                    <a href="#"><img src="35.jpeg"></a>
                </div>
                <div>
                    <a href="#"><img src="35.jpeg"></a>
                </div>
                <div id="dp_prev">
                    <a href="#"><i class="fas fa-chevron-left"></i></a>
                </div>
                <div id="dp_next">
                    <a href="#"><i class="fas fa-chevron-right"></i></a>
                </div>
                <div id="dp_bean">
                    <i class="fas fa-circle"></i>
                    <i class="fas fa-circle"></i>
                    <i class="fas fa-circle"></i>
                </div>
            </div>
            
            <div class="dp_productInfo">
                <div class="dp_info_name">
                    <span>${detailsProduct.productName}</span>
                </div>

                <div class="dp_info_stock_review">
                    <div class="dp_info_stock">
                        <a href="#">
                            <i class="fas fa-box-open"></i>
                            <span>재고 : ${detailsProduct.inventory}개</span>
                        </a>
                    </div>
                    <div class="dp_info_review">
                        <a href="#">
                            <i class="far fa-comments"></i>
                            <span>리뷰 : 99개</span>
                        </a>
                    </div>
                </div>

                <div class="dp_info_info">
                    <p>
                        ${detailsProduct.productContents}
                    </p>
                </div>
            </div>

            <div class="dp_info_go_pay_sb">
                <div class="dp_info_go_pay_sb_price">
                    <div>
                        판매가격 :
                    </div>
                    <div>
                        ₩${detailsProduct.price}
                    </div>
                </div>
                
                <div class="dp_info_go_pay_sb_amount">
                    <div>
                        수량 :
                    </div>
                    <div>
                        <select name="dp_info_go_pay_sb_amount" id="dp_info_go_pay_sb_amount">
                        <c:forEach var="i" begin="1" end="${detailsProduct.inventory}">
                            <option value="${i}">${i}</option>                        
                        </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="dp_info_go_pay_sb_amount">

                </div>

                <div class="dp_info_forward_pay_gopay_btn">
                    <a href="#">구매하기</a>
                </div>
                <div class="dp_info_forward_pay_backshop_btn">
                    <a href="#">장바구니에 담기</a>
            </div>
        </div>
        

        <!--  배송 주의사항, 주문 주의사항, 반품/환불 주의사항 탭메뉴 형식으로 만들기 -->
        <div class="detailsProduct_notice">
            <div class="detailsProduct_notice_tab_btn">
                <ul>
                    <li class="active">
                        <a href="#">제품 상세 정보</a>
                    </li>
                    <li>
                        <a href="#">주문 주의사항</a>
                    </li>
                    <li>
                        <a href="#">배송 주의사항</a>
                    </li>
                    <li>
                        <a href="#">반품 / 환불 안내</a>
                    </li>
                </ul>
            </div>

            <div class="detailsProduct_notice_tab_cont">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        
        
        </div>
    </div>
</body>
</html>