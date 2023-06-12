<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Amado - Furniture Ecommerce Template | DETAIL</title>
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

		<!-- Product Details Area Start -->
		<div class="single-product-area section-padding-100 clearfix">
			<div class="container-fluid">

				<div class="row">
					<div class="col-12">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mt-50">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Furniture</a></li>
								<li class="breadcrumb-item"><a href="#">Chairs</a></li>
								<li class="breadcrumb-item active" aria-current="page">white
									modern chair</li>
							</ol>
						</nav>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-lg-7">
						<div class="single_product_thumb">
							<div id="product_details_slider" class="carousel slide"
								data-ride="carousel">
								<ol class="carousel-indicators">
									<li class="active" data-target="#product_details_slider"
										data-slide-to="0"
										style="background-image: url(img/product-img/pro-big-1.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="1"
										style="background-image: url(img/product-img/pro-big-2.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="2"
										style="background-image: url(img/product-img/pro-big-3.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="3"
										style="background-image: url(img/product-img/pro-big-4.jpg);">
									</li>
								</ol>
								<div class="carousel-inner">
									<div class="carousel-item active">
										<a class="gallery_img" href="/assets/images/product-img/pro-big-1.jpg">
											<img class="d-block w-100"
											src="/assets/images/product-img/pro-big-1.jpg" alt="First slide">
										</a>
									</div>
									<div class="carousel-item">
										<a class="gallery_img" href="/assets/images/product-img/pro-big-2.jpg">
											<img class="d-block w-100"
											src="/assets/images/product-img/pro-big-2.jpg" alt="Second slide">
										</a>
									</div>
									<div class="carousel-item">
										<a class="gallery_img" href="/assets/images/product-img/pro-big-3.jpg">
											<img class="d-block w-100"
											src="/assets/images/product-img/pro-big-3.jpg" alt="Third slide">
										</a>
									</div>
									<div class="carousel-item">
										<a class="gallery_img" href="/assets/images/product-img/pro-big-4.jpg">
											<img class="d-block w-100"
											src="/assets/images/product-img/pro-big-4.jpg" alt="Fourth slide">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-5">
						<div class="single_product_desc">
							<!-- Product Meta Data -->
							<div class="product-meta-data">
								<div class="line"></div>
								<p class="product-price">$180</p>
								<a href="product-details.html">
									<h6>White Modern Chair</h6>
								</a>
								<!-- Ratings & Review -->
								<div
									class="ratings-review mb-15 d-flex align-items-center justify-content-between">
									<div class="ratings">
										<i class="fa fa-star" aria-hidden="true"></i> <i
											class="fa fa-star" aria-hidden="true"></i> <i
											class="fa fa-star" aria-hidden="true"></i> <i
											class="fa fa-star" aria-hidden="true"></i> <i
											class="fa fa-star" aria-hidden="true"></i>
									</div>
									<div class="review">
										<a href="#">Write A Review</a>
									</div>
								</div>
								<!-- Avaiable -->
								<p class="avaibility">
									<i class="fa fa-circle"></i> In Stock
								</p>
							</div>

							<div class="short_overview my-5">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Aliquid quae eveniet culpa officia quidem mollitia impedit iste
									asperiores nisi reprehenderit consequatur, autem, nostrum
									pariatur enim?</p>
							</div>

							<!-- Add to Cart Form -->
							<form class="cart clearfix" method="post">
								<div class="cart-btn d-flex mb-50">
									<p>Qty</p>
									<div class="quantity">
										<span class="qty-minus"
											onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
											class="fa fa-caret-down" aria-hidden="true"></i></span> <input
											type="number" class="qty-text" id="qty" step="1" min="1"
											max="300" name="quantity" value="1"> <span
											class="qty-plus"
											onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
											class="fa fa-caret-up" aria-hidden="true"></i></span>
									</div>
								</div>
								<button type="submit" name="addtocart" value="5"
									class="btn amado-btn">Add to cart</button>
							</form>

						</div>
					</div>
				</div>
			</div>

			<!-- Relate Product Start-->
			<div class="w-100 section-padding-100">
				<div class="container-fluid">
					<h3>Related</h3>
					<div class="row">
						<!-- Single Product Area -->
						<div class="col-6 col-md-6 col-xl-3">
							<div class="single-product-wrapper">
								<!-- Product Image -->
								<div class="product-img">
									<img src="/assets/images/product-img/product3.jpg" alt="">
									<!-- Hover Thumb -->
									<img class="hover-img" src="/assets/images/product-img/product4.jpg"
										alt="">
								</div>

								<!-- Product Description -->
								<div
									class="product-description d-flex align-items-center justify-content-between">
									<!-- Product Meta Data -->
									<div class="product-meta-data">
										<div class="line"></div>
										<p class="product-price">$180</p>
										<a href="product-details.html">
											<h6>Modern Chair</h6>
										</a>
									</div>
									<!-- Ratings & Cart -->
									<div class="ratings-cart text-right">
										<div class="ratings">
											<i class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i>
										</div>
										<div class="cart">
											<a href="cart.html" data-toggle="tooltip"
												data-placement="left" title="Add to Cart"><img
												src="/assets/images/core-img/cart.png" alt=""></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Product Area -->
						<div class="col-6 col-md-6 col-xl-3">
							<div class="single-product-wrapper">
								<!-- Product Image -->
								<div class="product-img">
									<img src="/assets/images/product-img/product3.jpg" alt="">
									<!-- Hover Thumb -->
									<img class="hover-img" src="/assets/images/product-img/product4.jpg"
										alt="">
								</div>

								<!-- Product Description -->
								<div
									class="product-description d-flex align-items-center justify-content-between">
									<!-- Product Meta Data -->
									<div class="product-meta-data">
										<div class="line"></div>
										<p class="product-price">$180</p>
										<a href="product-details.html">
											<h6>Modern Chair</h6>
										</a>
									</div>
									<!-- Ratings & Cart -->
									<div class="ratings-cart text-right">
										<div class="ratings">
											<i class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i>
										</div>
										<div class="cart">
											<a href="cart.html" data-toggle="tooltip"
												data-placement="left" title="Add to Cart"><img
												src="/assets/images/core-img/cart.png" alt=""></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Product Area -->
						<div class="col-6 col-md-6 col-xl-3">
							<div class="single-product-wrapper">
								<!-- Product Image -->
								<div class="product-img">
									<img src="/assets/images/product-img/product3.jpg" alt="">
									<!-- Hover Thumb -->
									<img class="hover-img" src="/assets/images/product-img/product4.jpg"
										alt="">
								</div>

								<!-- Product Description -->
								<div
									class="product-description d-flex align-items-center justify-content-between">
									<!-- Product Meta Data -->
									<div class="product-meta-data">
										<div class="line"></div>
										<p class="product-price">$180</p>
										<a href="product-details.html">
											<h6>Modern Chair</h6>
										</a>
									</div>
									<!-- Ratings & Cart -->
									<div class="ratings-cart text-right">
										<div class="ratings">
											<i class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i>
										</div>
										<div class="cart">
											<a href="cart.html" data-toggle="tooltip"
												data-placement="left" title="Add to Cart"><img
												src="/assets/images/core-img/cart.png" alt=""></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Product Area -->
						<div class="col-6 col-md-6 col-xl-3">
							<div class="single-product-wrapper">
								<!-- Product Image -->
								<div class="product-img">
									<img src="/assets/images/product-img/product3.jpg" alt="">
									<!-- Hover Thumb -->
									<img class="hover-img" src="/assets/images/product-img/product4.jpg"
										alt="">
								</div>

								<!-- Product Description -->
								<div
									class="product-description d-flex align-items-center justify-content-between">
									<!-- Product Meta Data -->
									<div class="product-meta-data">
										<div class="line"></div>
										<p class="product-price">$180</p>
										<a href="product-details.html">
											<h6>Modern Chair</h6>
										</a>
									</div>
									<!-- Ratings & Cart -->
									<div class="ratings-cart text-right">
										<div class="ratings">
											<i class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i>
										</div>
										<div class="cart">
											<a href="cart.html" data-toggle="tooltip"
												data-placement="left" title="Add to Cart"><img
												src="/assets/images/core-img/cart.png" alt=""></a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- Relate Product End-->

		</div>
		<!-- Product Details Area End -->

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