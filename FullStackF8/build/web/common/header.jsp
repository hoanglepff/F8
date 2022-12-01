<%-- 
    Document   : header_footer
    Created on : Nov 29, 2022, 1:02:20 PM
    Author     : Longvh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Page Title</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
        <script src='main.js'></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href="http://localhost:8080/FullStackF8/view/user/css/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">

                <a target="_blank" href="img/f8.jpg">
                    <img src="img/f8.jpg" alt="Northern Lights" width="35" height="35">
                </a>   
                <a>
                    Học Lập Trình Để Đi Làm
                </a>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                    <form class="search">
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                        <!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->
                    </form>
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <a target="_blank" href="img/lt.png">
                            <img src="img/lt.png" alt="Northern Lights" width="40" height="40">
                        </a>   
                        <a target="_blank" href="img/hoc.png">
                            <img src="img/hoc.png" alt="Northern Lights" width="40" height="40">
                        </a>  
                        <a target="_blank" href="img/bl.png">
                            <img src="img/bl.png" alt="Northern Lights" width="40" height="40">
                        </a>  
                        <a target="_blank" href="chooselogin.jsp">
                            <img src="img/addbl.png" alt="Northern Lights" width="40" height="40">
                        </a>
                        <c:if test ="${sessionScope.acc == null}">
                        <a target="_blank" href="logincontroller">Đăng Nhập</a>
                        <a target="_blank" href="registercontroller">Đăng Kí</a>
                        </c:if>
                        <c:if test ="${sessionScope.acc != null}">
                        <a target="_blank" href="#">Khóa học của tôi</a> 
                        </c:if>
                    </ul>
                </div>
            </nav>
        </header>
    </body>

</html>
