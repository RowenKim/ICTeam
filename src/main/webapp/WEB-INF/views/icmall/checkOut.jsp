<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<script src="https://kit.fontawesome.com/ccbdf9af0c.js"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
	<jsp:include page="header.jsp" />
	<!-- Body Inner -->
    <div class="body-inner">
    
     <!-- Page title -->
        <section id="page-title">
            <div class="container">
                <div class="page-title">
                    <h1>Checkout</h1>
                    <span>Checkout details</span>
                </div>
                <div class="breadcrumb">
                    <ul>
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">Shop</a>
                        </li>
                        <li class="active"><a href="#">Checkout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- end: Page title -->
        <!-- SHOP CHECKOUT -->
        <section id="shop-checkout">
            <div class="container">
                <div class="shop-cart">
                    <form method="post" class="sep-top-md">
                        <div class="row">
                            <div class="col-lg-6 no-padding">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="upper">Billing & Shipping Address</h4>
                                    </div>
                                    <div class="col-lg-12 form-group">
                                        <label class="sr-only">Country</label>
                                        <select>
                                           
                                            <option selected="selected" value="GB">United Kingdom (UK)</option>
                                            <option value="US">United States (US)</option>
                                            <option value="UY">Uruguay</option>
                                            <option value="UZ">Uzbekistan</option>
                                            <option value="VU">Vanuatu</option>
                                            <option value="VA">Vatican</option>
                                            <option value="VE">Venezuela</option>
                                            <option value="VN">Vietnam</option>
                                            <option value="WF">Wallis and Futuna</option>
                                            <option value="EH">Western Sahara</option>
                                            <option value="WS">Western Samoa</option>
                                            <option value="YE">Yemen</option>
                                            <option value="ZM">Zambia</option>
                                            <option value="ZW">Zimbabwe</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label class="sr-only">First Name</label>
                                        <input type="text" class="form-control" placeholder="First Name" value="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label class="sr-only">Last Name</label>
                                        <input type="text" class="form-control" placeholder="Last Name" value="">
                                    </div>
                                    <div class="col-lg-12 form-group">
                                        <label class="sr-only">Company Name</label>
                                        <input type="text" class="form-control" placeholder="Company Name" value="">
                                    </div>
                                    <div class="col-lg-12 form-group">
                                        <label class="sr-only">Address</label>
                                        <input type="text" class="form-control" placeholder="Address" value="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label class="sr-only">Apartment, suite, unit etc.</label>
                                        <input type="text" class="form-control" placeholder="Apartment, suite, unit etc." value="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label class="sr-only">Town / City</label>
                                        <input type="text" class="form-control" placeholder="Town / City" value="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label class="sr-only">State / County</label>
                                        <input type="text" class="form-control" placeholder="State / County" value="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label class="sr-only">Postcode / Zip</label>
                                        <input type="text" class="form-control" placeholder="Postcode / Zip" value="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label class="sr-only">Email</label>
                                        <input type="text" class="form-control" placeholder="Email" value="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label class="sr-only">Phone</label>
                                        <input type="text" class="form-control" placeholder="Phone" value="">
                                    </div>
                                    <div class="col-lg-12 form-group">
                                        <div class="panel panel-naked">
                                            <div class="panel-heading"><a href="#collapseThree" class="btn btn-outline btn-sm" data-toggle="collapse" class="collapsed" aria-expanded="false">Create an account?</a>
                                            </div>
                                            <div class="panel-collapse collapse" id="collapseThree" aria-expanded="false" style="height: 0px;">
                                                <div class="panel-body">
                                                    <p>Create an account by entering the information below. If you are a
                                                        returning customer please login at the top of the page.</p>
                                                    <div class="form-group sep-top-xs">
                                                        <label class="sr-only">Password</label>
                                                        <input type="password" class="form-control" placeholder="Password" value="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="upper"><a href="#collapseFour" data-toggle="collapse" class="collapsed" aria-expanded="false"> Ship to a different address <i class="icon-arrow-down-circle"></i></a></h4>
                                    </div>
                                    <div class="col-lg-12">
                                        <div style="height: 0px;" aria-expanded="false" id="collapseFour" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <p>If you have shopped with us before, please enter your details in the
                                                    boxes below. If you are a new customer please proceed to the Billing
                                                    &amp; Shipping section.</p>
                                                <div class="sep-top-xs">
                                                    <div class="row">
                                                        <div class="col-lg-12 form-group">
                                                            <label class="sr-only">Country</label>
                                                            <select>
                                                               
                                                                <option value="AE">United Arab Emirates</option>
                                                                <option selected="selected" value="GB">United Kingdom
                                                                    (UK)</option>
                                                                <option value="US">United States (US)</option>
                                                                <option value="UY">Uruguay</option>
                                                                <option value="UZ">Uzbekistan</option>
                                                                <option value="VU">Vanuatu</option>
                                                                <option value="VA">Vatican</option>
                                                                <option value="VE">Venezuela</option>
                                                                <option value="VN">Vietnam</option>
                                                                <option value="WF">Wallis and Futuna</option>
                                                                <option value="EH">Western Sahara</option>
                                                                <option value="WS">Western Samoa</option>
                                                                <option value="YE">Yemen</option>
                                                                <option value="ZM">Zambia</option>
                                                                <option value="ZW">Zimbabwe</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-lg-6 form-group">
                                                            <label class="sr-only">First Name</label>
                                                            <input type="text" class="form-control" placeholder="First Name" value="">
                                                        </div>
                                                        <div class="col-lg-6 form-group">
                                                            <label class="sr-only">Last Name</label>
                                                            <input type="text" class="form-control" placeholder="Last Name" value="">
                                                        </div>
                                                        <div class="col-lg-12 form-group">
                                                            <label class="sr-only">Company Name</label>
                                                            <input type="text" class="form-control" placeholder="Company Name" value="">
                                                        </div>
                                                        <div class="col-lg-12 form-group">
                                                            <label class="sr-only">Address</label>
                                                            <input type="text" class="form-control" placeholder="Address" value="">
                                                        </div>
                                                        <div class="col-lg-6 form-group">
                                                            <label class="sr-only">Apartment, suite, unit etc.</label>
                                                            <input type="text" class="form-control" placeholder="Apartment, suite, unit etc." value="">
                                                        </div>
                                                        <div class="col-lg-6 form-group">
                                                            <label class="sr-only">Town / City</label>
                                                            <input type="text" class="form-control" placeholder="Town / City" value="">
                                                        </div>
                                                        <div class="col-lg-6 form-group">
                                                            <label class="sr-only">State / County</label>
                                                            <input type="text" class="form-control" placeholder="State / County" value="">
                                                        </div>
                                                        <div class="col-lg-6 form-group">
                                                            <label class="sr-only">Postcode / Zip</label>
                                                            <input type="text" class="form-control" placeholder="Postcode / Zip" value="">
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <textarea class="form-control" placeholder="Notes about your order, e.g. special notes for delivery" rows="7"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="seperator"><i class="fa fa-credit-card"></i>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="upper">Your Order</h4>
                            <div class="table table-sm table-striped table-responsive table table-bordered table-responsive">
                                <table class="table m-b-0">
                                    <thead>
                                        <tr>
                                            <th class="cart-product-thumbnail">Product</th>
                                            <th class="cart-product-name">Description</th>
                                            <th class="cart-product-subtotal">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="cart-product-thumbnail">
                                                <div class="cart-product-thumbnail-name">Bolt Sweatshirt</div>
                                            </td>
                                            <td class="cart-product-description">
                                                <p><span>Bolt Sweatshirt</span>
                                                    <span>Size: M</span>
                                                    <span>Color: Blue</span>
                                                    <span>Gender: Women</span>
                                                </p>
                                            </td>
                                            <td class="cart-product-subtotal">
                                                <span class="amount">$20.00</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="cart-product-thumbnail">
                                                <div class="cart-product-thumbnail-name">Consume Tshirt</div>
                                            </td>
                                            <td class="cart-product-description">
                                                <p><span>Consume Tshirt</span>
                                                    <span>Size: S</span>
                                                    <span>Color: Blue</span>
                                                    <span>Gender: Women</span>
                                                </p>
                                            </td>
                                            <td class="cart-product-subtotal">
                                                <span class="amount">$18.99</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="cart-product-thumbnail">
                                                <div class="cart-product-thumbnail-name">Logo Tshirt</div>
                                            </td>
                                            <td class="cart-product-description">
                                                <p><span>Logo Tshirt</span>
                                                    <span>Size: L</span>
                                                    <span>Color: Grey</span>
                                                    <span>Gender: Man</span>
                                                </p>
                                            </td>
                                            <td class="cart-product-subtotal">
                                                <span class="amount">$18.00</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="cart-product-thumbnail">
                                                <div class="cart-product-thumbnail-name">Grey Sweatshirt</div>
                                            </td>
                                            <td class="cart-product-description">
                                                <p><span>Grey Sweatshirt</span>
                                                    <span>Size: L</span>
                                                    <span>Color: Grey</span>
                                                    <span>Gender: Man</span>
                                                </p>
                                            </td>
                                            <td class="cart-product-subtotal">
                                                <span class="amount">$68.97</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <h4>Order Total</h4>
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="cart-product-name">
                                                        <strong>Order Subtotal</strong>
                                                    </td>
                                                    <td class="cart-product-name text-right">
                                                        <span class="amount">$125.96</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="cart-product-name">
                                                        <strong>Shipping</strong>
                                                    </td>
                                                    <td class="cart-product-name  text-right">
                                                        <span class="amount">Free Shipping</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="cart-product-name">
                                                        <strong>Coupon</strong>
                                                    </td>
                                                    <td class="cart-product-name  text-right">
                                                        <span class="amount">-20%</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="cart-product-name">
                                                        <strong>Total</strong>
                                                    </td>
                                                    <td class="cart-product-name text-right">
                                                        <span class="amount color lead"><strong>$100.76</strong></span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <h4 class="upper">Payment Method</h4>
                                    <div class="list-group">
                                        <input type="radio" name="RadioInputName" value="Value1" id="Radio1" />
                                        <label class="list-group-item" for="Radio1">Direct Bank Transfer</label>
                                        <input type="radio" name="RadioInputName" value="Value2" id="Radio2" />
                                        <label class="list-group-item" for="Radio2">Cheque Payment</label>
                                        <input type="radio" name="RadioInputName" value="Value3" id="Radio3" />
                                        <label class="list-group-item" for="Radio3"><img width="90" alt="paypal" src="images/shop/paypal-logo.png"></label>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <a class="btn icon-left float-right mt-3" href="#"><span>Proceed to
                                            PayPal</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end: SHOP CHECKOUT -->
        <!-- DELIVERY INFO -->
        <section class="background-grey p-t-40 p-b-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-gift"></i></a>
                            </div>
                            <h3>Free shipping on orders $60+</h3>
                            <p>Order more than 60$ and you will get free shippining Worldwide. More info.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-plane"></i></a>
                            </div>
                            <h3>Worldwide delivery</h3>
                            <p>We deliver to the following countries: USA, Canada, Europe, Australia</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-history"></i></a>
                            </div>
                            <h3>60 days money back guranty!</h3>
                            <p>Not happy with our product, feel free to return it, we will refund 100% your money!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end: DELIVERY INFO -->
     </div> <!-- end: Body Inner -->
	
	
	
	
	
	
	
	<script src="${pageContext.request.contextPath }/JS/jaeuk.js"></script>
	<script src="${pageContext.request.contextPath }/JS/won.js"></script>
	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>