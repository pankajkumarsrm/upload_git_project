<%-- 
    Document   : profile
    Created on : 29-Aug-2023, 11:28:52 pm
    Author     : PANKAJ KUMAR GUPTA
--%>


<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="error_page.jsp"%>
<% 
    
 User user=(User)session.getAttribute("currentUser");
 if (user==null)
 {
 response.sendRedirect("login.jsp");
}

%>

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
       
       <!--navbar-->
       
       <nav class="navbar navbar-expand-lg navbar-dark  primary-background">
    <a class="navbar-brand" href="index.jsp"> <span class="fa fa-asterisk"></span> VENTERN </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="#"><span class="fa fa-bell-o"></span>Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="fa fa-check-square-o"></span> cotegories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">implement</a>
          <a class="dropdown-item" href="#">project imlipliment</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
       <li class="nav-item">
           <a class="nav-link" href="#"><span class="fa fa-address-book"></span> contact</a>
      </li>
     
     
      
    </ul>
    
      <ul class="navbar-nav mr-right"> 
          
          <!--  user.getName() it is user login user name show  -->
          
             <li class="nav-item">
                 <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal" ><span class="fa fa-user-circle "></span> <%= user.getName() %> </a>
      </li>
          
          
           <li class="nav-item">
           <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus "></span> Logout </a>
      </li>
          
      </ul>
  </div>
</nav>
       
       
       <!--end of navbar-->
                
       
         <!--show profile updation confirmation--> 
         
                            <% 
                                Message m = (Message) session.getAttribute("msg");
                                if (m!=null){
                                
                            
                            %>
                            
                            <div class="alert <%= m.getCssClass() %>" role="alert">
                               <%= m.getContent() %>
                            </div>
                            
                            <% session.removeAttribute("msg");
                                }
                            
                            %>
       
       
       
       
     
<!-- profile Modal -->  <!-- using the website :  https://getbootstrap.com/docs/4.6/components/modal/  -->


                <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header primary-background text-white text-center">
                        <h5 class="modal-title" id="exampleModalLabel">Socail Media</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                          <div class="container text-center">
                              <img  src="pics/<%= user.getProfile()%>" class="img-fluid" style="border-radius:40%;max-width:140px;">
                              <br>
                              <h5 class="modal-title mt-3" id ="exampleModalLabel"> <%= user.getName() %>
                                   
                                  <!--// details-->
                                  
                                  <div id="profile-details">         
                         <table class="table">
                               
                                <tbody>
                                  <tr>
                                    <th scope="row">ID :</th>
                                    <td><%= user.getId() %></td>
                                    
                                  </tr>
                                  <tr>
                                    <th scope="row">Email :</th>
                                    <td><%= user.getEmail() %></td>
                                    
                                  </tr>
                                  <tr>
                                    <th scope="row">Gender :</th>
                                    <td><%= user.getGender() %></td>
                                    
                                  </tr>
                                  
                                   <tr>
                                    <th scope="row">status :</th>
                                    <td><%= user.getAbout() %></td>
                                    
                                  </tr>
                              
                                 <tr>
                                    <th scope="row">Registered on :</th>
                                    <td><%= user.getDataTime() %></td>
                                    
                                  </tr>
                                </tbody>
                              </table>
                                  </div>
                          
                          <!--Profile edit-->
                          
                          <div id="profile-edit" style="display:none;" >
                              <h4 class="mt-1">Please Edit carefully </h4>
                   <!--form tag start-->
                   
                   <!--enctype="multipart/from-data"  user upload emage ,audio, video type data in database -->
                   
                              <form action="EditServlet" method="POST" enctype="multipart/form-data">
                                  <table class="table">
                                      <tr>
                                          <td> ID :</td><!-- comment -->
                                          <td> <%= user.getId()%></td>
                                          
                                      </tr>
                                      <tr>
                                          <td> Email :</td>
                                          <td> <input type="email" class="form-control" name="user_email" value="<%=user.getEmail() %>"> </td>
                                      </tr>
                                      <tr>
                                          <td> Name :</td>
                                          <td> <input type="text" class="form-control" name="user_name" value="<%=user.getName().toUpperCase() %>"> </td>
                                      </tr>
                                      <tr>
                                          <td> Password :</td>
                                          <td> <input type="Password" class="form-control" name="user_password" value="<%=user.getPassword() %>"> </td>
                                      </tr>
                                      <tr>
                                          <td> Gender :</td>
                                          <td><%=user.getGender().toUpperCase() %></td>
                                      </tr>
                                      <tr>
                                          <td> About :</td>
                                          <td>
                                              <textarea rows="2" class="form-control" name="user_about" > <%=user.getAbout() %> </textarea>
                                          </td>
                                      </tr>
                                      
                                      <tr>
                                          <td>Profile img :</td>
                                          <td> <input type="file" class="form-control" name="image"> </td>
                                      </tr>
                                      
                                  </table>
                                          
                                          <div class="container">
                                              <button type="submit" class="btn btn-outline-primary"> save </button>
                                          </div>
                                              
                              </form>
                              
                          </div>
                              <!-- end of Profile edit-->
                          
                          
                          </div>
                 
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button  id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
                      </div>
                    </div>
                  </div>
                </div>
       
       <!--end of profile modal-->
             
       
       
           <!-- javaScript -->
        
                    <script
              src="https://code.jquery.com/jquery-3.7.0.min.js"
              integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
              crossorigin="anonymous"></script>


            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

            <script src="js/myjs.js" type="text/javascript"></script>

            <script>
                $(document).ready(function(){
                   let editStatus=false; 
                   
                    $('#edit-profile-button').click(function(){
                        
                        if (editStatus == false)
                        {
                            $("#profile-details").hide();
                            
                            $("#profile-edit").show();
                            editStatus = true;
                            $(this).text("Back")
                        } else
                        {
                            $("#profile-details").show();
                            
                            $("#profile-edit").hide();
                            editStatus = false;
                             $(this).text("Edit")
                        }
          
                })
                });
            </script>

                
    </body>
</html>
