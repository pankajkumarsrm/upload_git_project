<%-- 
    Document   : error_page
    Created on : 29-Aug-2023, 3:36:50 pm
    Author     : PANKAJ KUMAR GUPTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! something went worng...</title>
        
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
        <div class="container text-center">
            
            <!-- responsive the page use 'img-fluid'  -->
            <img src="img/error.png" class="img-fluid">
            
            <h3> sorry !something went worng...</h3>                                <!-- mt means margin for top -->
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3" > Home</a>
            
        </div>
            </body>
</html>
