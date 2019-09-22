<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h4>Create Job</h4>
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
						<form:form role="form" modelAttribute="job"
							onsubmit="return createJob();">
							<div class="card card-block">

								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Name: </label>
									<div class="col-sm-10">
										<input type="text" class="form-control boxed" id="jobTitle">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Department: </label>
									<div class="col-sm-10">
										<form:select class="c-select form-control boxed"
											path="departmentId" id="departmentId">
											<form:option value="-1" label="Select Department" />
											<form:options items="${departments}" />
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Post: </label>
									<div class="col-sm-10">
										<form:select class="c-select form-control boxed" path="postId"
											id="postId">
											<form:option value="-1" label="Select Post" />
											<form:options items="${posts}" />
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Type: </label>
									<div class="col-sm-10">
										<form:select class="c-select form-control boxed" path="type"
											id="type">
											<form:option value="-1" label="Select Job Type" />
											<form:options items="${types}" />
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Manager: </label>
									<div class="col-sm-10">
										<form:select class="c-select form-control boxed"
											path="managerId" id="managerId">
											<form:option value="-1" label="Select Manager" />
											<form:options items="${managers}" />
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Experience Level: </label>
									<div class="col-sm-10">
										<form:select class="c-select form-control boxed"
											path="experienceId" id="experienceId">
											<form:option value="-1" label="Select Experience" />
											<form:options items="${experiences}" />
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Location: </label>
									<div class="col-sm-10">
										<form:select class="c-select form-control boxed" path="cityId"
											id="cityId">
											<form:option value="-1" label="Select Location" />
											<form:options items="${cities}" />
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Closing Date: </label>
									<div class="col-sm-10">
										<div class='input-group date' id='closingDate'>
											<input type='text' class="form-control" id="closingDateTime"/> <span
												class="input-group-addon"> <span
												class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Content: </label>
									<div class="col-sm-10">
										<textarea name="content" id="editor"></textarea>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-sm-10 col-sm-offset-2">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</div>

							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	function createJob() {
		var data = {

			"title" : $("#jobTitle").val(),
			"detail" : jobEditor.getData(),
			"postId" : $("#postId").find(":selected").val(),
			"departmentId" : $("#departmentId").find(":selected").val(),
			"type" : $("#type").find(":selected").val(),
			"managerId" : $("#managerId").find(":selected").val(),
			"experienceId" : $("#experienceId").find(":selected").val(),
			"cityId" : $("#cityId").find(":selected").val(),
			"closingDateTime": $("#closingDateTime").val(),

		};

		console.log(data);
		$.ajax({
			type : "POST",
			url : "/oms/api/job",
			data : JSON.stringify(data),
			contentType : "application/json",
			dataType : 'json',
			success : function(response) {
				console.log(response);
				console.log(response.responseText);
				window.location.replace(response.responseText);
			},
			error : function(e) {
				if (e.status == 201) {
					console.log(e.responseText);
					window.location.replace(e.responseText);
				}
				console.log(e);
			}
		});
		return false;
	}
</script>
