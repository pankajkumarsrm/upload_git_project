<%-- 
    Document   : index
    Created on : 24-Aug-2023, 5:14:30 pm
    Author     : PANKAJ KUMAR GUPTA
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Movie Ticket Booking</title>
        
        <link rel="icon" href="img/production.png">
        
        <!--  bootstrap css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                <!-- connect the css file -->
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <!-- font-awessome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        <style>
             .banner-background{
               clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 67% 91%, 35% 100%, 0 86%, 0 0);
            }
        </style>
    </head>
    <body>
        
  
        
        
        <!--navbar or header -->
        
        <%@include file="normal_navbar.jsp"%>
        
        <!--navbar or header -->
        
        
  
        <!-- //banner-->
<!--        
        <div class="container-fluid p-0 m-0" >
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container">
                <h3 class="display-3"> welcome to TechBlog </h3>
                <p> Welcome to technical blog, world of technology
                    A programming language is a system of notation for writing computer programs.[1] Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language.
                </p>
                
                <p> The description of a programming language is usually split into the two components of syntax (form) and semantics (meaning), which are usually defined by a formal language.</p>
                
                
                <button class="btn btn-outline-light btn-lg"><span class="fa fa-external-link"></span> start ! its Free </button>
                <a href="login_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span> Login </a>
                </div>
            </div>
            
            
            
            
        </div>-->
<!--        
         //cards 
        <div class="container">
            
             first row contain
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card" >
                           
                            <div class="card-body">
                              <h5 class="card-title">Java programming</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn primary-background text-white">Read more</a>
                            </div>
                          </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                           
                            <div class="card-body">
                              <h5 class="card-title">Java programming</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn primary-background text-white">Read more</a>
                            </div>
                          </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                           
                            <div class="card-body">
                              <h5 class="card-title">Java programming</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn primary-background text-white">Read more</a>
                            </div>
                          </div>
                </div>
            </div>-->
            
<!--            
            second row contains 
            
             <div class="row">
                <div class="col-md-4">
                    <div class="card" >
                           
                            <div class="card-body">
                              <h5 class="card-title">Java programming</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn primary-background text-white">Read more</a>
                            </div>
                          </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                           
                            <div class="card-body">
                              <h5 class="card-title">Java programming</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn primary-background text-white">Read more</a>
                            </div>
                          </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                           
                            <div class="card-body">
                              <h5 class="card-title">Java programming</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn primary-background text-white">Read more</a>
                            </div>
                          </div>
                </div>
            </div>
        </div>
        -->
        
        
        
        
        <section style="min-height:500px;">
            
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                 <ol class="carousel-indicators">
                   <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                   <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                   <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                   <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                 </ol>
                 <div class="carousel-inner">
                   <div class="carousel-item active">
                     <img class="d-block w-100" src="img/banner1.jpg" alt="First slide" style="width:100%;height:500px;">
                   </div>
                   <div class="carousel-item">
                     <img class="d-block w-100" src="img/banner2.jpg" alt="Second slide" style="width:100%;height:500px;">
                   </div>
                   <div class="carousel-item">
                     <img class="d-block w-100" src="img/banner3.jpg" alt="Third slide" style="width:100%;height:500px;">
                   </div>
                      <div class="carousel-item">
                     <img class="d-block w-100" src="img/banner4.jpg" alt="Third slide" style="width:100%;height:500px;">
                   </div>
                 </div>
                 <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                   <span class="sr-only">Previous</span>
                 </a>
                 <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                   <span class="carousel-control-next-icon" aria-hidden="true"></span>
                   <span class="sr-only">Next</span>
                 </a>
               </div>
       </section>
        
        
        
        
        
        <!--footer--> 
        
       <%@include file="footer.jsp"%>
        <!--footer--> 
        
        
        
        <!-- javaScript -->
        
        <script
  src="https://code.jquery.com/jquery-3.7.0.min.js"
  integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
  crossorigin="anonymous"></script>
        
        
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="js/myjs.js" type="text/javascript"></script>


        
    </body>
</html>
