<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Checkout example · Bootstrap</title>

<!-- Bootstrap -->

<link
	href="https://fonts.googleapis.com/css?family=Kosugi+Maru&amp;subset=japanese"
	rel="stylesheet">
<!-- css -->
<link href="/QQ/dist/css/index.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="/QQ/dist/css/bootstrap.css" rel="stylesheet">



<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="/QQ/dist/css/form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">
	<!-- include navbar -->
	<jsp:include page="../common/navbar.jsp"></jsp:include>
	<div class="container mt-3">
		<div class="py-5 text-center">
			<img class="d-block mx-auto mb-4"
				src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72"
				height="72">
			<h2>회원등록</h2>
			<p class="lead">Below is an example form built entirely with
				Bootstrap’s form controls. Each required form group has a validation
				state that can be triggered by attempting to submit the form without
				completing it.</p>
		</div>


		<div>
			<h4 class="mb-3">회원정보</h4>
			<form class="needs-validation" name="frm" method="post"
				action="MemberServlet">
				<input type="hidden" name="command" value="member_update">

				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="firstName">First name</label> <input type="text"
							class="form-control" id="firstName" placeholder="" value=""
							required>
						<div class="invalid-feedback">Valid first name is required.
						</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="lastName">Last name</label> <input type="text"
							class="form-control" id="lastName" placeholder="" value=""
							required>
						<div class="invalid-feedback">Valid last name is required.</div>
					</div>
				</div>

				<div class="mb-3">
					<label for="username">Username</label> <input type="text"
						class="form-control" id="username" placeholder="Username" required>
					<div class="invalid-feedback" style="width: 100%;">Your
						username is required.</div>

				</div>

				<div class="mb-3">
					<label for="email">Email <span class="text-muted">(Optional)</span></label>
					<input type="email" class="form-control" id="email"
						placeholder="you@example.com">
					<div class="invalid-feedback">Please enter a valid email
						address for shipping updates.</div>
				</div>

				<div class="mb-3">
					<label for="phone">phone</label> <input type="text"
						class="form-control" id="phone" placeholder="0X0-XXXX-XXX"
						required>
					<div class="invalid-feedback">Please enter your phone number.</div>
				</div>

				<div class="mb-3">
					<label for="address">Address</label> <input type="text"
						class="form-control" id="address" placeholder="1234 Main St"
						required>
					<div class="invalid-feedback">Please enter your shipping
						address.</div>
				</div>

				<div class="mb-3">
					<label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
					<input type="text" class="form-control" id="address2"
						placeholder="Apartment or suite">
				</div>

				<div class="row">
					<div class="col-md-5 mb-3">
						<label for="country">Country</label> <select
							class="custom-select d-block w-100" id="country" required>
							<option value="">Choose...</option>
							<option>United States</option>
						</select>
						<div class="invalid-feedback">Please select a valid country.
						</div>
					</div>
					<div class="col-md-4 mb-3">
						<label for="state">State</label> <select
							class="custom-select d-block w-100" id="state" required>
							<option value="">Choose...</option>
							<option>California</option>
						</select>
						<div class="invalid-feedback">Please provide a valid state.
						</div>
					</div>
					<div class="col-md-3 mb-3">
						<label for="zip">Zip</label> <input type="text"
							class="form-control" id="zip" placeholder="" required>
						<div class="invalid-feedback">Zip code required.</div>
					</div>
				</div>
				<hr class="mb-4">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="same-address" required> <label
						class="custom-control-label" for="same-address">회원 약관
						동의(필수)</label>
					<div class="invalid-feedback">Must be checked.</div>
				</div>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="save-info">
					<label class="custom-control-label" for="save-info">이메일
						수신동의(선택)</label>
				</div>
				<hr class="mb-4">

				<h4 class="mb-3">Payment</h4>

				<div class="d-block my-2">
					<div class="custom-control custom-radio">
						<input id="credit" name="paymentMethod" type="radio"
							class="custom-control-input" checked required> <label
							class="custom-control-label" for="credit">일반회원</label>
					</div>
					<div class="custom-control custom-radio">
						<input id="debit" name="paymentMethod" type="radio"
							class="custom-control-input" required> <label
							class="custom-control-label" for="debit">사업자</label>
					</div>

				</div>


				<hr class="mb-4">
				<button class="btn btn-primary btn-lg btn-block" type="submit">Continue
					to checkout</button>
			</form>
		</div>
		<br> <br>


		<!-- include footer -->
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/QQ/dist/js/jquery-3.3.1.min.js"><\/script>')
	</script>
	<script src="/QQ/dist/js/bootstrap.bundle.min.js"></script>
	<script src="form-validation.js"></script>
</body>
</html>
