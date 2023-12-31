<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
	
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<!-- Custom styles for this template -->
<link href="/assets/css/dashboard.css" rel="stylesheet">
</head>
<body>

	<jsp:include page="/views/admin/header.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/views/admin/sideBarMenu.jsp"></jsp:include>

			<!-- body start -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Products</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
						<div class="btn-group me-2">
							<button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
							<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
						</div>
						<button type="button"
							class="btn btn-sm btn-outline-secondary dropdown-toggle">
							<span data-feather="calendar"></span> This week
						</button>
					</div>
				</div>

				<!-- Table -->
				<div class="p-4" style="border-radius: 30px;">

					<div class="d-flex justify-content-between p-2 mb-2">
						<h3 style="text-transform: uppercase">Search and page</h3>
					</div>
					<h2>Section title</h2>
					<div class="table-responsive">
						<table class="table table-striped table-sm">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Header</th>
									<th scope="col">Header</th>
									<th scope="col">Header</th>
									<th scope="col">Header</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1,001</td>
									<td>random</td>
									<td>data</td>
									<td>placeholder</td>
									<td>text</td>
								</tr>
								<tr>
									<td>1,002</td>
									<td>placeholder</td>
									<td>irrelevant</td>
									<td>visual</td>
									<td>layout</td>
								</tr>
								<tr>
									<td>1,003</td>
									<td>data</td>
									<td>rich</td>
									<td>dashboard</td>
									<td>tabular</td>
								</tr>
								<tr>
									<td>1,003</td>
									<td>information</td>
									<td>placeholder</td>
									<td>illustrative</td>
									<td>data</td>
								</tr>
								<tr>
									<td>1,004</td>
									<td>text</td>
									<td>random</td>
									<td>layout</td>
									<td>dashboard</td>
								</tr>
								<tr>
									<td>1,005</td>
									<td>dashboard</td>
									<td>irrelevant</td>
									<td>text</td>
									<td>placeholder</td>
								</tr>
								<tr>
									<td>1,006</td>
									<td>dashboard</td>
									<td>illustrative</td>
									<td>rich</td>
									<td>data</td>
								</tr>
								<tr>
									<td>1,007</td>
									<td>placeholder</td>
									<td>tabular</td>
									<td>information</td>
									<td>irrelevant</td>
								</tr>
								<tr>
									<td>1,008</td>
									<td>random</td>
									<td>data</td>
									<td>placeholder</td>
									<td>text</td>
								</tr>
								<tr>
									<td>1,009</td>
									<td>placeholder</td>
									<td>irrelevant</td>
									<td>visual</td>
									<td>layout</td>
								</tr>
								<tr>
									<td>1,010</td>
									<td>data</td>
									<td>rich</td>
									<td>dashboard</td>
									<td>tabular</td>
								</tr>
								<tr>
									<td>1,011</td>
									<td>information</td>
									<td>placeholder</td>
									<td>illustrative</td>
									<td>data</td>
								</tr>
								<tr>
									<td>1,012</td>
									<td>text</td>
									<td>placeholder</td>
									<td>layout</td>
									<td>dashboard</td>
								</tr>
								<tr>
									<td>1,013</td>
									<td>dashboard</td>
									<td>irrelevant</td>
									<td>text</td>
									<td>visual</td>
								</tr>
								<tr>
									<td>1,014</td>
									<td>dashboard</td>
									<td>illustrative</td>
									<td>rich</td>
									<td>data</td>
								</tr>
								<tr>
									<td>1,015</td>
									<td>random</td>
									<td>tabular</td>
									<td>information</td>
									<td>text</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</main>
			<!-- body end -->
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="/assets/js/dashboard.js"></script>
</body>
</html>