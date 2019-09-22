<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="right_col" role="main">
	<div class="page-title">
		<div class="title_left">
			<h4 style="margin-left: 21px;">
				Job Opening <small> ${detail.location}</small>
			</h4>
		</div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12">
				<div class="x_panel">
					<div class="x_title">
						<div class="clearfix"></div>
					</div>

					<div class="x_content">

						<div class="col-md-9 col-sm-9 col-xs-12">${detail.detail}</div>

						<!-- start project-detail sidebar -->
						<div class="col-md-3 col-sm-3 col-xs-12">

							<section class="panel">

								<div class="x_title">
									<div class="text-center mtop20">
										<a href="/oms/public/job/apply/${detail.jobId}" class="btn btn-success source">Apply for this job</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-body">
									<h3 class="green">
										<i class="fa fa-paint-brush"></i> Job Detail
									</h3>

									<div class="project_detail">
										<p class="title">Department</p>
										<p>${detail.department}</p>
										<p class="title">Employment Type</p>
										<p>${detail.type}</p>
										<p class="title">Minimum Experience</p>
										<p>${detail.experience}</p>
										<p class="title">Job Status</p>
										<p>${detail.status}</p>
										<p class="title">Posted Date</p>
										<p>${detail.postedDate}</p>
										<p class="title">Last Date to Apply</p>
										<p>${detail.closingDate}</p>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>