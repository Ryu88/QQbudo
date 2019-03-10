<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product Details</title>

<link
	href="https://fonts.googleapis.com/css?family=Kosugi+Maru&amp;subset=japanese"
	rel="stylesheet">
<!-- css -->
<link href="/QQ/dist/css/index.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="/QQ/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/QQ/dist/css/custom.css" rel="stylesheet">

<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 50%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
<script>
	// This example requires the Places library. Include the libraries=places
	// parameter when you first load the API. For example:
	// <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

	var map;
	var service;
	var infowindow;

	function initMap() {
		var tokyo = new google.maps.LatLng(35.6691074, 139.6012976);

		infowindow = new google.maps.InfoWindow();

		map = new google.maps.Map(document.getElementById('map'), {
			center : tokyo,
			zoom : 18
		});

		var request = {
			query : '日本 東京都千代田区外神田１丁目１５−４',
			fields : [ 'name', 'geometry' ],
		};

		service = new google.maps.places.PlacesService(map);

		service.findPlaceFromQuery(request, function(results, status) {
			if (status === google.maps.places.PlacesServiceStatus.OK) {
				for (var i = 0; i < results.length; i++) {
					createMarker(results[i]);
				}

				map.setCenter(results[0].geometry.location);
			}
		});
	}

	function createMarker(place) {
		var marker = new google.maps.Marker({
			map : map,
			position : place.geometry.location
		});

		google.maps.event.addListener(marker, 'click', function() {
			infowindow.setContent(place.name);
			infowindow.open(map, this);
		});
	}
</script>
</head>
<body>
	<jsp:include page="../common/navbar.jsp"></jsp:include>
	<br>
	<br>
	<div class="container mt-2">
		<div class="row">
			<div class="col-md-6 mb-3">

				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleControls" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleControls" data-slide-to="1"></li>
						<li data-target="#carouselExampleControls" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="images/500x500_1_1.jpg"
								alt="First slide">
							<div class="carousel-caption d-none d-md-block">
								<!-- <h5>Item 1 Heading</h5>
                  <p>Item 1 Description</p> -->
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="images/500x500_1_2.png"
								alt="Second slide">
							<div class="carousel-caption d-none d-md-block">
								<!-- <h5>Item 2 Heading</h5>
                  <p>Item 2 Description</p> -->
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="images/500x500_1_3.jpg"
								alt="Third slide">
							<div class="carousel-caption d-none d-md-block">
								<!-- <h5>Item 3 Heading</h5>
                  <p>Item 3 Description</p> -->
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

			</div>
			<div class="col-md-6 mb-3">
				<br> <br> <br>
				<h2>도쿄 신주쿠 구</h2>
				<h4 class="muted">〒169-0073 百人町１丁目５ １ 丁目 ４−２</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident sunt in
					culpa.</p>
				<hr>
				<h3>
					Price -
					<del class="text-error">$30000</del>
					$24999
				</h3>
				<p class="muted">Inclusive of all taxes.</p>
				<br>
				<p>
					<a href="#" class="btn btn-dark btn-lg btn-block">Reserve Now</a>
				</p>
				<p>
					<a href="#" class="btn btn-secondary btn-lg btn-block">Add Cart</a>
				</p>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-12">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Home</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Profile</a></li>
					<li class="nav-item"><a class="nav-link" id="contact-tab"
						data-toggle="tab" href="#contact" role="tab"
						aria-controls="contact" aria-selected="false">Contact</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<table class="table">
							<thead class="thead-light">
								<tr>
									<th scope="col">#</th>
									<th scope="col">First</th>
									<th scope="col">Last</th>
									<th scope="col">Handle</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Larry</td>
									<td>the Bird</td>
									<td>@twitter</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">...</div>
					<div class="tab-pane fade" id="contact" role="tabpanel"
						aria-labelledby="contact-tab">...</div>
				</div>

			</div>
		</div>
		<br>
	</div>
	<br>
	<!-- <div id="map" class="container mt-2"></div>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDInbZlPevaJ0oEb5AgxUVkPB36BXAyEj0&libraries=places&callback=initMap&language=ja&region=JP"
		async defer></script> -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="/QQ/dist/js/jquery-3.3.1.min.js"></script>
	<script src="/QQ/dist/js/bootstrap.min.js"></script>
</body>
</html>