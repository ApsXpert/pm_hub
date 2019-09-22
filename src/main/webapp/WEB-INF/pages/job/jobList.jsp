<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h4>${pageTitle}</h4>
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12">
				<div class="x_panel">
					<div class="x_title">
						<div class="clearfix"></div>
					</div>

					<div class="x_content">

						<div class="table-responsive">
							<table class="table table-striped jambo_table bulk_action">
								<thead>
									<tr class="headings">
										<th class="column-title">Title</th>
										<th class="column-title">Department</th>
										<th class="column-title">Type</th>
										<th class="column-title">Closing Date</th>
										<th class="column-title">Actions</th>

									</tr>
								</thead>

								<tbody>
									<c:forEach items="${jobs}" var="job">
										<tr class="even pointer">
											<td>${job.title}</td>
											<td>${job.department}</td>
											<td>${job.type}</td>
											<td>${job.closingDate}</td>
											<td><a href="/oms/web/job/view/${job.jobId}">View</a> | 
											<a href="/oms/web/job/view/${job.jobId}">Applicants</a></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>