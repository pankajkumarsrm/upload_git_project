<%-- 
    Document   : Contact
    Created on : 04-Sep-2023, 1:52:27 am
    Author     : PANKAJ KUMAR GUPTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
          <!-- css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        <style>
             .banner-background{
               clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 67% 91%, 35% 100%, 0 86%, 0 0);
            }
        </style>
    </head>
    <body>
          <%@include file="normal_navbar.jsp"%>
          
          
          
          
          <section style="min-height:450px;">
              
              <div class="container" style="color:maroon;">
                  <div class="col-md-12">
                      
                      
                       <center>
                                      <h1>Contact Us</h1>
                                      <<h5>GET IN TOUCH</h5>
                                      <p>
                                          we'd love to talk about how we can wark together.
                                          send us a message below and we'll respond as soon as possible.
                                      </p>
                                      
                        </center>
                  </div>
                  <div class="row"  style="color:white">
                      
                      
                       <div class="col-md-6 mt-5 mb-5 pl-5" style="border-radius:30px;background-color:maroon">
                            <h2 class="mt-5">Contact information</h2>
                            
                            <p class="mt-1">
                                our team will get back to you with in 24hours.
                            </p>
                            <p class="mt-5"> <i class="fa fa-phone  mt-3"></i>&nbsp; +91 84094 47057</p>
                            <p class="mt-3"> <i class="fa fa-envelope mt-3"></i>&nbsp;movieticket@live.com</p>
                            <p class="mt-3"> <i class="fa fa-map-marker mt-3"></i>&nbsp;Adrees</p>
                            
                            <h2 class="mt-5">Join Us</h2>
                            <div class="mb-5">
                                
                                <a href="#" class="mt-5 mb-5" style="color:white;"> <i class="fa fa-facebook-square fa-2x mt-3"></i></a>
                                <a href="#" class="mt-5 ml-3 mb-5" style="color:white;"> <i class="fa fa-twitter-square fa-2x mt-3"></i></a>
                                <a href="#" class="mt-5 ml-3 mb-5" style="color:white;"> <i class="fa fa-instagram fa-2x mt-3"></i></a>
                                <a href="#" class="mt-5 ml-3 mb-5" style="color:white;"> <i class="fa fa-linkedin-square fa-2x mt-3"></i></a>
                            
                            </div>
                            
                      </div>
                      <div class="col-md-6">
                          
        
                        <div class="container"  style="color:maroon;">
               
                   
                    <div class="card-body">
                        
                        <form id="reg_form" action="RegisterServlet"  method="POST">
                           
                            <div class="form-group">
                                <label for="user_name"><b>User Name</b></label>
                              <input name="user_name" type="text" style="border-radius:30px;" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
                              
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1"><b>Email address</b></label>
                              <input name="user_email" type="email" style="border-radius:30px;" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                             
                            </div>
                            <div class="form-group">
                                <label for="exampleInputnumber1"><b>Phone no.</b></label>
                              <input name="user_number" type="text" style="border-radius:30px;" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            
                           
                            
                            <div class="form-group">
                                <label for="message"> <b>Message</b></label>
                                <textarea name="message" style="resize:none;width:100%;border-radius:30px;" class="form-control" id="" rows="7" placeholder="Enter something about your self"></textarea>
                            </div>
                            
                              
                            
                            <br>
                            <button id="submit-btn" type="submit" style="background-color:maroon;color:white;" class="btn btn-primary">Message</button>
                          </form>
                                
                    </div>
                        
                  
                   
            </div>
       
                      </div>
                      
                     
                  </div>
                  
              </div>
              
              
              
              
            
       </section>
          
        
        
            <%@include file="footer.jsp"%>
        
      
         
         
         
         
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
