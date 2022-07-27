<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">



    <style>
        .sidebar{
            width:200px;
        }

        .sidebar li, .sidebar h4{
            margin: 10px;
        }

        .selectMode{
            font-size: 20px;
            color:rgb(99, 99, 99);

        }

        #dev_status{
            background-color: gainsboro;
            width: 700px;
            text-align: center;
        }

        #dev_pro{
            width: 700px;
        }

        #dev_pro button{
            width:"20px";
            height:"10px";
        }

        #mypage{
            margin: 10px;
        }
        #dev_status button{
            border:none;
            background-color: gainsboro;
        }

    </style>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <%@ include file="../common/menubar.jsp" %>
    



    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5" >
                    <div class="sidebar">
                        <div class="sidebar">
                            <div class="sidebar__item" class="sidebar" style="background-color: #f5f5f5; padding:30px;">
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">나의 주문 관리</h4>
                                <ul>
                                    <li><a href="./mypage_order&dev.html">주문 및 배송 조회</a></li>
                                    <li><a href="./mypage_ordercancle.html">주문취소 / 환불</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">장바구니</h4>
                                <ul>
                                    <li><a href="#">장바구니</a></li>
                                    <li><a href="#">찜목록</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">커뮤니티 활동</h4>
                                <ul>
                                    <li><a href="#">내가 쓴 게시글</a></li>
                                    <li><a href="#">내가 좋아요 한 글</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">나의 혜택 관리</h4>
                                <ul>
                                    <li><a href="./mypage_point.html">적립포인트</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">회원 정보</h4>
                                <ul>
                                    <li><a href="#">배송지관리</a></li>
                                    <li><a href="#">회원 정보 수정</a></li>
                                    <li><a href="#">회원 탈퇴 신청</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">상품 리뷰</h4>
                                <ul>
                                    <li><a href="./mypage_myReview.html">작성 가능한 리뷰</a></li>
                                    <li><a href="./mypage_myReviewHistory.html">작성한 리뷰</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">상품문의</h4>
                                <ul>
                                    <li><a href="#">상품문의</a></li>
                                </ul>
                        
                            </div>    
                        </div>
                    </div>
                
                </div>
                <div class="col-lg-9 col-md-7" style="padding-left:120px; flex-grow:1;">
                    
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort" style="width:200px">
                                    <h3 class="selectMode">주문 및 배송 조회</h3>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                    <div class="row">
                        
                        <div id="dev_status">
                            <form action="">
                                <table>
                                    <tr>
                                        <td width="200px">결제완료 : 0 </td>
                                        <td width="200px">배송중 : 0</td>
                                        <td width="200px">배송완료 : 0</td>
                                    </tr>
                                </table>
                            </form>
                        </div>

                        <div id="dev_pro">
                            <br><hr>

                            <form action="">
                                <table>
                                    <tr>
                                        <td rowspan="4" width="200px"><img class="product__details__pic__item"
                                            src=http://www.walbox.co.kr/upfile/item/111_1618565835.jpg alt=""></td>
                                        <td width="80px">제품명</td>
                                        <td width="150px" colspan="2"> <b>BBC사이언스</b></td>
                                    </tr>
                                    <tr height="100px">
                                        <td> 제품설명</td>
                                        <td colspan="2"> 제품관련 설명작성</td>
                                    </tr>
                                    <tr>
                                        <td>제품가격</td>
                                        <td width="150px"> 12,160원</td>
                                        <td><a href="" onclick="window.open('./review_write.html','review','width=700, height=900, scrollbars=no, resizable=no, toolbars=no, menubar=no')" class="btn btn-sm btn-secondary">리뷰 쓰기</a>
                                            <a href="http://www.walbox.co.kr/item_view.html?item_cate=11103&item_no=999668" class="btn btn-sm btn-secondary">재구매</a>
                                            <a class="btn btn-sm btn-secondary">배송조회</a>
                                        </td>
                                    </tr>
                                </table>
                                <hr>
                            </form>
                            
                            <form action="">
                                <table>
                                    <tr>
                                        <td rowspan="4" width="200px"> <img class="product__details__pic__item"
                                            src=http://www.walbox.co.kr/upfile/item/%EB%A6%AC%EB%B9%998_1658642603.jpg alt=""></td>
                                        <td width="80px">제품명</td>
                                        <td width="150px" colspan="2"> <b>리빙센스</b></td>
                                    </tr>
                                    <tr height="100px">
                                        <td> 제품설명</td>
                                        <td colspan="2"> 제품관련 설명작성</td>
                                    </tr>
                                    <tr>
                                        <td>제품가격</td>
                                        <td width="150px"> 7,410원</td>
                                        <td><a href="" onclick="window.open('./review_write.html','review','width=700, height=900, scrollbars=no, resizable=no, toolbars=no, menubar=no')" class="btn btn-sm btn-secondary">리뷰 쓰기</a>
                                            <a href="http://www.walbox.co.kr/item_view.html?item_cate=11100&item_no=999933" class="btn btn-sm btn-secondary">재구매</a>
                                            <a class="btn btn-sm btn-secondary">배송조회</a>
                                        </td>
                                    </tr>
                                </table>
                                <hr>
                            </form>

                            <form action="">
                                <table>
                                    <tr> 
                                        <td rowspan="4" width="200px"><img class="product__details__pic__item"
                                            src=http://www.walbox.co.kr/upfile/item/%EB%8F%99%EC%95%84_1648388049.jpg alt=""></td>
                                        <td width="80px">제품명</td>
                                        <td width="150px" colspan="2"> <b>과학동아</b></td>
                                    </tr>
                                    <tr height="100px">
                                        <td> 제품설명</td>
                                        <td colspan="2"> 제품관련 설명작성</td>
                                    </tr>
                                    <tr>
                                        <td>제품가격</td>
                                        <td width="150px"> 	14,250원</td>
                                        <td><a href="" onclick="window.open('./review_write.html','review','width=750, height=900, scrollbars=no, resizable=no, toolbars=no, menubar=no')" class="btn btn-sm btn-secondary">리뷰 쓰기</a>
                                            <a href="http://www.walbox.co.kr/item_view.html?item_cate=11103&item_no=999884" class="btn btn-sm btn-secondary">재구매</a>
                                            <a class="btn btn-sm btn-secondary">배송조회</a>
                                        </td>
                                    </tr>
                                </table>
                                <hr>
                            </form>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>