<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h4 style="margin-left: 21px;">
					Apply for <small> ${job.title}</small>
				</h4>
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
						<form  onsubmit="return applyForJob();">
							<div class="card card-block">

								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Full Name: </label>
									<div class="col-sm-10">
										<input type="text" class="form-control boxed"
											id="applicantName">
										<input type="text" class="form-control boxed"
											value="${job.jobId}" id="jobId"
											style="display:none;">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Email: </label>
									<div class="col-sm-10">
										<input type="text" class="form-control boxed"
											id="email">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Current Salary: </label>
									<div class="col-sm-10">
										<input type="number" class="form-control boxed"
											id="currentSalary" path="currentSalary">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Expected Salary: </label>
									<div class="col-sm-10">
										<input type="number" class="form-control boxed"
											id="expectedSalary">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Linkedin: </label>
									<div class="col-sm-10">
										<input type="text" class="form-control boxed"
											id="linkedin">
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 form-control-label text-xs-right">
										Resume: </label>
									<div class="col-sm-6">
										<input type="file" name="file" id="file" multiple>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-sm-10 col-sm-offset-2">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	
	function applyForJob() {
		var file = null;
		try{
			file = ($("#file"))[0].files[0];
			if (file.length === 0) {
				singleFileUploadForm.innerHTML = "Please select a file";
				singleFileUploadForm.style.display = "block";
			}
		}catch(e){
			console.log(e);
		}
		
		
		
		var applicantName = $("#applicantName").val();
		var email = $("#email").val();
		var currentSalary = $("#currentSalary").val();
		var expectedSalary = $("#expectedSalary").val();
		var linkedin = $("#linkedin").val();
		var jobId = $("#jobId").val();
		
		var formData = new FormData();
		formData.append("file", file);
		formData.append("applicantName", applicantName);
		formData.append("email", email);
		formData.append("currentSalary", currentSalary);
		formData.append("expectedSalary", expectedSalary);
		formData.append("linkedin", linkedin);
		formData.append("jobId", jobId);

		var xhr = new XMLHttpRequest();
		xhr.open("POST", "/oms/public/api/job");

		xhr.onload = function() {
			console.log(xhr.responseText);
			if (xhr.status == 201) {
				window.location.replace(xhr.responseText);
			} else {
				console.log(xhr);
			}
		}

		xhr.send(formData);
		
		return false;
	}
</script>
