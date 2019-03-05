<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Real Estate</title>
    <!-- Bootstrap -->
    <link href="dist/css/bootstrap.css" rel="stylesheet">
    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Kosugi+Maru&amp;subset=japanese" rel="stylesheet">
    <!-- css -->
    <link href="dist/css/index.css" rel ="stylesheet"> 
  </head>
  <body>
  <!-- navbar include -->
  <jsp:include page="common/navbar.jsp"></jsp:include>    
    <div class="container mt-3">
      <div class="row">
        <div class="col-12">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleControls" data-slide-to="1"></li>
              <li data-target="#carouselExampleControls" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="images/1900x500_2.jpeg" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 1 Heading</h5>
                  <p>Item 1 Description</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/1900x500_3.jpg" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 2 Heading</h5>
                  <p>Item 2 Description</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/1900x500_4.png" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 3 Heading</h5>
                  <p>Item 3 Description</p>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
      </div>
      <hr>
    </div>
    <section>
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 col-12">
            <ul class="list-unstyled">
              <li class="media">
                <a class="house" href="#">
                <img class="mr-3 rounded-circle" src="images/icon_1.png" alt="Generic placeholder image"></a>
                <div class="media-body">
                  <h5 class="mt-0 mb-1">주택</h5>
                  <p class="mb-0">모든 종류의 주택 정보를 제공합니다.</p>
                </div>
              </li>
            </ul>
          </div>
          <div class="col-lg-4 col-md-6 col-12">
            <ul class="list-unstyled">
              <li class="media">
                <img class="mr-3 rounded-circle" src="images/icon_2.png" alt="Generic placeholder image">
                <div class="media-body ">
                  <h5 class="mt-0 mb-1">오피스</h5>
                  <p class="mb-0">도쿄 전 지역의 오피스를 소개합니다.</p>
                </div>
              </li>
            </ul>
          </div>
          <div class="col-lg-4 d-md-none d-lg-block">
            <ul class="list-unstyled">
              <li class="media">
                <img class="mr-3 rounded-circle" src="images/icon_3.png" alt="Generic placeholder image">
                <div class="media-body">
                  <h5 class="mt-0 mb-1">상가</h5>
                  <p class="mb-0">전문가가 조언해 드립니다.</p>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <hr>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-12">
          <div class="row">
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/400X200.gif" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/400X200.gif" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>            
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/400X200.gif" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/400X200.gif" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/400X200.gif" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/400X200.gif" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr>
        <div class="col-lg-4 col-12">
          <div class="row mx-0">
            <div class="col-12 card bg-light mx-auto">
              <h3 class="text-center card-header">Find Your Home</h3>
              <form class="card-body">
                <div class="form-group row">
                  <label for="location1" class="col-form-label">Location</label>
                  <select class="form-control" name="location" id="location1">
                    <option value="">Any</option>
                    <option value="">1</option>
                    <option value="">2</option>
                  </select>
                </div>
                <div class="form-group row">
                  <label for="pricefrom" class="col-form-label">Price From</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text" id="basic-addon1">$</div>
                    </div>
                    <input type="text" class="form-control" id="pricefrom" aria-describedby="basic-addon1">
                  </div>
                </div>
                <div class="form-group row">
                  <label for="priceto" class="col-form-label">Price To</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text" id="basic-addon2">$</div>
                    </div>
                    <input type="text" class="form-control" id="priceto" aria-describedby="basic-addon2">
                  </div>
                </div>
                <p class="text-center"><a href="#" class="btn btn-danger" role="button">Search </a></p>
              </form>
            </div>
            <div class="col-12">
              <h3 class="text-center">Agents</h3>
              <hr>
              <div class="media">
                <img class="mr-3" src="images/64X64.gif" alt="Generic placeholder image">
                <div class="media-body">
                  <h5 class="mt-0">John Doe</h5>
                  <abbr title="Phone">P:</abbr> (123) 456-7890 <a href="mailto:#">first.last@example.com</a>
                </div>
              </div>
              <div class="media mt-2">
                <img class="mr-3" src="images/64X64.gif" alt="Generic placeholder image">
                <div class="media-body">
                  <h5 class="mt-0">Linda Smith</h5>
                  <abbr title="Phone">P:</abbr> (123) 456-7890 <a href="mailto:#">first.last@example.com</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>        
    <hr>
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-12">
          <div class="row">
            <div class="col-lg-6 col-12">
              <h3>About Us</h3>
              <hr>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, consequatur neque exercitationem distinctio esse! Cupiditate doloribus a consequatur iusto illum eos facere vel iste iure maxime. Velit, rem, sunt obcaecati eveniet id nemo molestiae. In.</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, consequatur neque exercitationem distinctio esse! Cupiditate doloribus a consequatur iusto illum eos facere vel iste iure maxime. Velit, rem, sunt obcaecati eveniet id nemo molestiae. In.</p>
            </div>
            <div class="col-lg-6 col-12">
              <h3>Latest News</h3>
              <hr>
              <div>
            <div class="media">
              <div class="media-body">
                <h4 class="mt-0 mb-1">Heading 1</h4>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, quod temporibus veniam deserunt deleniti accusamus voluptatibus at illo sunt quisquam. </div>
              <a href="#"><img class="ml-3" src="images/75X.gif" alt="placeholder image"></a> </div>
            <div class="media">
              <div class="media-body">
                <h4 class="mt-0 mb-1">Heading 2</h4>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo, iure nemo earum quae aliquid animi eligendi rerum rem porro facilis. </div>
              <a href="#"><img class="ml-3" src="images/75X.gif" alt="placeholder image"></a> </div>
          </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-12 mt-md-0 mt-2">
          <h3>Contact Us</h3>
          <hr>
          <address>
            <strong>MyStoreFront, Inc.</strong><br>
            Indian Treasure Link<br>
            Quitman, WA, 99110-0219<br>
            <abbr title="Phone">P:</abbr> (123) 456-7890
          </address>
          <address>
            <strong>Full Name</strong><br>
            <a href="mailto:#">first.last@example.com</a>
          </address>
        </div>
      </div>
    </div>
    <!-- include footer -->
     <jsp:include page="common/footer.jsp"></jsp:include> 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="dist/js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="dist/js/popper.min.js"></script>
    <script src="dist/js/bootstrap.js"></script>
  </body>
</html>