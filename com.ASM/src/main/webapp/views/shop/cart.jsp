<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Amado - Furniture Ecommerce Template | PRODUCTS</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
	
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<!-- Favicon  -->

<!-- Core Style CSS -->
<link rel="stylesheet" href="/assets/css/core-style.css">
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<jsp:include page="/views/shop/_search.jsp"></jsp:include>

	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">

		<jsp:include page="/views/shop/_header.jsp"></jsp:include>

		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="cart-title mt-50">
							<h2>Shopping Cart</h2>
						</div>

						<div class="cart-table clearfix">
							<table class="table table-responsive">
								<thead>
									<tr>
										<th></th>
										<th>Name</th>
										<th>Price</th>
										<th>Quantity</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="cart_product_img"><a href="#"><img
												src="/assets/images/bg-img/cart1.jpg" alt="Product"></a></td>
										<td class="cart_product_desc">
											<h5>White Modern Chair</h5>
										</td>
										<td class="price"><span>$130</span></td>
										<td class="qty">
											<div class="qty-btn d-flex">
												<p>Qty</p>
												<div class="quantity">
													<span class="qty-minus"
														onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
														class="fa fa-minus" aria-hidden="true"></i></span> <input
														type="number" class="qty-text" id="qty" step="1" min="1"
														max="300" name="quantity" value="1"> <span
														class="qty-plus"
														onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
														class="fa fa-plus" aria-hidden="true"></i></span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="cart_product_img"><a href="#"><img
												src="/assets/images/bg-img/cart2.jpg" alt="Product"></a></td>
										<td class="cart_product_desc">
											<h5>Minimal Plant Pot</h5>
										</td>
										<td class="price"><span>$10</span></td>
										<td class="qty">
											<div class="qty-btn d-flex">
												<p>Qty</p>
												<div class="quantity">
													<span class="qty-minus"
														onclick="var effect = document.getElementById('qty2'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
														class="fa fa-minus" aria-hidden="true"></i></span> <input
														type="number" class="qty-text" id="qty2" step="1" min="1"
														max="300" name="quantity" value="1"> <span
														class="qty-plus"
														onclick="var effect = document.getElementById('qty2'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
														class="fa fa-plus" aria-hidden="true"></i></span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="cart_product_img"><a href="#"><img
												src="/assets/images/bg-img/cart3.jpg" alt="Product"></a></td>
										<td class="cart_product_desc">
											<h5>Minimal Plant Pot</h5>
										</td>
										<td class="price"><span>$10</span></td>
										<td class="qty">
											<div class="qty-btn d-flex">
												<p>Qty</p>
												<div class="quantity">
													<span class="qty-minus"
														onclick="var effect = document.getElementById('qty3'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
														class="fa fa-minus" aria-hidden="true"></i></span> <input
														type="number" class="qty-text" id="qty3" step="1" min="1"
														max="300" name="quantity" value="1"> <span
														class="qty-plus"
														onclick="var effect = document.getElementById('qty3'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
														class="fa fa-plus" aria-hidden="true"></i></span>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-12 col-lg-4">
						<div class="cart-summary">
							<h5>Cart Total</h5>
							<ul class="summary-table">
								<li><span>subtotal:</span> <span>$140.00</span></li>
								<li><span>delivery:</span> <span>Free</span></li>
								<li><span>total:</span> <span>$140.00</span></li>
							</ul>
							<div class="cart-btn mt-100">
								<a href="cart.html" class="btn amado-btn w-100">Checkout</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- ##### Main Content Wrapper End ##### -->

	<jsp:include page="/views/shop/_footer.jsp"></jsp:include>

	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="/assets/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="/assets/js/popper.min.js"></script>
	<!-- Plugins js -->
	<script src="/assets/js/plugins.js"></script>
	<!-- Active js -->
	<script src="/assets/js/active.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
</body>
</html>