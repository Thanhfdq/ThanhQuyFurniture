<nav id="sidebarMenu"
	class="col-md-3 col-lg-2 d-md-block sidebar collapse"
	style="background-color: #eee;">
	<div class="position-sticky pt-3">
		<ul class="nav flex-column">
			<li class="nav-item"><a
				class="nav-link ${currentpage==1?'active':''}"
				href="/admin/dashboard"> <span data-feather="home"></span>
					Dashboard
			</a></li>
			<li class="nav-item"><a
				class="nav-link ${currentpage==2?'active':''}" href=/admin/order">
					<span data-feather="file"></span> Orders
			</a></li>
			<li class="nav-item"><a
				class="nav-link ${currentpage==3?'active':''}" href="/admin/product">
					<span data-feather="shopping-cart"></span> Products
			</a></li>
			<li class="nav-item"><a
				class="nav-link ${currentpage==4?'active':''}"
				href="/admin/category"> <i class="bi bi-collection"></i>
					Categories
			</a></li>
			<li class="nav-item"><a
				class="nav-link ${currentpage==5?'active':''}" href="/admin/account">
					<span data-feather="users"></span> Accounts
			</a></li>
			<li class="nav-item"><a
				class="nav-link ${currentpage==6?'active':''}" href="/admin/report">
					<span data-feather="bar-chart-2"></span> Reports
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#"> <span
					data-feather="layers"></span> Integrations
			</a></li>
		</ul>

		<h6
			class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
			<span>Saved reports</span> <a class="link-secondary" href="#"
				aria-label="Add a new report"> <span data-feather="plus-circle"></span>
			</a>
		</h6>
		<ul class="nav flex-column mb-2">
			<li class="nav-item"><a class="nav-link" href="#"> <span
					data-feather="file-text"></span> Current month
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#"> <span
					data-feather="file-text"></span> Last quarter
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#"> <span
					data-feather="file-text"></span> Social engagement
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#"> <span
					data-feather="file-text"></span> Year-end sale
			</a></li>
		</ul>
	</div>
</nav>