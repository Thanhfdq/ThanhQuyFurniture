<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

			<div
				style="background-color: rgba(255, 255, 255, 0.3); backdrop-filter: blur(10px);"
				class="position-fixed d-flex w-100 z-3 border-bottom">

				<div class="col-md-3 col-lg-2 me-0"></div>
				<div
					class="d-flex col-md-9 col-lg-10 justify-content-between align-items-center pt-2 pb-1 px-4">
					<p class="fs-1">
						<i class="bi bi-collection-fill"></i> <b>Category</b>
					</p>
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
			</div>
			<!-- body start -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<!-- Table -->
				<div class="p-4 mt-5" style="border-radius: 30px;">

					<div class="p-4">


						<!-- Dinamic content start -->
						<div class="row">
							<!-- Form -->
							<form:form class="col-lg-4 mt-4" action="/admin/category"
								modelAttribute="item">
								<h3>Edit</h3>
								<form:input class="form-control" path="id" name="id"
									placeholder="Id?" />
								<br>
								<form:input class="form-control" path="name" name="name"
									placeholder="Category name?" />
								<hr>
								<button class="btn btn-primary"
									formaction="/admin/category/create">Create</button>
								<button class="btn btn-success"
									formaction="/admin/category/update">Update</button>
								<a class="btn btn-danger"
									href="/admin/category/delete/${item.id}">Delete</a>
								<a class="btn btn-outline-primary float-end"
									href="/admin/category/index"><i class="bi bi-eraser"></i>
									Reset</a>
							</form:form>
							<div class="col-lg-8 mt-4" style="overflow: auto">
								<h3>List</h3>
								<!-- Search -->
								<div class="d-flex justify-content-between">
									<form action="/admin/category" method="post" class="row">
										<div class="input-group mb-3">
											<input type="text" class="form-control"
												placeholder="Keywords" value="${keywords}" name="keywords">
											<button class=" btn btn-primary" type="button"
												id="button-addon2">Search</button>
										</div>
									</form>
									<div class="row">
										<p class="col">Show</p>
										<select class="form-select w-auto"
											aria-label="Default select example">
											<option value="5" selected>5</option>
											<option value="10">10</option>
											<option value="50">50</option>
											<option value="100">100</option>
										</select>
										<p class="col">entries</p>
									</div>
								</div>
								<!-- Table -->
								<table class="table table-striped table-hover table-responsive"
									border="1" style="width: 100%">
									<tr>
										<th>ID</th>
										<th>FULLNAME</th>
										<th>ACTION</th>
									</tr>
									<c:forEach var="item" items="${page.content}">
										<tr>
											<td>${item.id}</td>
											<td>${item.name}</td>
											<td><a href="/admin/category/edit/${item.id}">Edit</a></td>
										</tr>
									</c:forEach>
								</table>
								<!-- Paging -->
								<div class="d-flex justify-content-between">
									<ul class="pagination">
										<li class="page-item ${page.number==0?'disabled':''}"><a
											class="page-link" href="/admin/category?p=0">First</a></li>
										<li class="page-item ${page.number==0?'disabled':''}"><a
											class="page-link" href="/admin/category?p=${page.number-1}">Previous</a></li>
										<c:forEach varStatus="i" begin="1" end="${page.totalPages}">
											<li class="page-item ${page.number==i.index-1?'active':''}"><a
												class="page-link" href="/admin/category?p=${i.index-1}">${i.index}</a></li>
										</c:forEach>

										<li
											class="page-item ${page.number==page.totalPages-1?'disabled':''}"><a
											class="page-link" href="/admin/category?p=${page.number+1}">Next</a></li>
										<li
											class="page-item ${page.number==page.totalPages-1?'disabled':''}"><a
											class="page-link"
											href="/admin/category?p=${page.totalPages-1}">Last</a></li>
									</ul>
									<div>Showing ${page.size * (page.number+1) - page.size + 1}
										to ${page.size * page.number +
                            page.numberOfElements}
										of ${page.totalElements} entries</div>
								</div>
							</div>
						</div>
						<!-- Dinamic content end -->


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