<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
	<div class="login_wrapper">
		<div class="animate form login_form">
			<section class="login_content">
				<div class="" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
						<li role="presentation" class="active"><a href="#tab_login"
							id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Login</a></li>
						<li role="presentation" class=""><a href="#tab_signup"
							role="tab" id="profile-tab" data-toggle="tab"
							aria-expanded="false">Sign up</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in"
							id="tab_login" aria-labelledby="home-tab">
							<form action="login" method="POST">
								<div>
									<input type="email" class="form-control" placeholder="Email"
										name="email" required />
								</div>
								<div>
									<input type="password" class="form-control"
										placeholder="Password" name="password" required />
								</div>
								<div>
									<button type="submit" class="btn btn-primary btn-block">
										Login</button>
									<a class="reset_pass" href="#">Lost your password?</a>
								</div>

								<div class="clearfix"></div>

								<div class="separator"></div>
							</form>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_signup"
							aria-labelledby="profile-tab">
							<form:form role="form" action="signup" modelAttribute="user">
								<div>
									<input type="text" class="form-control"
										placeholder="First Name" name="firstName" required />
								</div>
								<div>
									<input type="text" class="form-control" placeholder="Last Name"
										name="lastName" required />
								</div>
								<div>
									<input type="email" class="form-control" placeholder="Email"
										name="email" required />
								</div>
								<div>
									<input type="password" class="form-control"
										placeholder="Password" name="password" required />
								</div>
								<div>
									<input type="password" class="form-control"
										placeholder="Confirm Password" name="confirmPassword" required />
								</div>
								<div>
									<button type="submit" class="btn btn-primary btn-block">
										Create Account</button>
									<a href="#" class="google btn"><i
										class="fa fa-google fa-fw"> </i> Login with Google+ </a>
								</div>

								<div class="clearfix"></div>

								<div class="separator"></div>
							</form:form>
						</div>
					</div>
				</div>
			</section>
		</div>

	</div>
</div>