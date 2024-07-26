<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="/views/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/views/assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="/views/assets/css/demo.css" rel="stylesheet" />
    <link href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-image="../assets/img/sidebar-5.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="javascript:;" class="simple-text">
                        <img src="/views/assets/img/logoASFS.png" alt="" style="max-width: 100px;">
                    </a>
                </div>
                <ul class="nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="dashboard.html">
                            <i class="nc-icon nc-icon nc-paper-2"></i>
                            <p>Bài Viết</p>
                        </a>
                    </li>
            </div>
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#pablo"><img src="/assets/img/logo.jpg" alt="" style="max-width: 80px;"></a>
                  
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nc-icon nc-zoom-split"></i>
                                    <span class="d-lg-block">&nbsp;Search</span>
                                </a>
                            </li>
                        </ul>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="/logout">
                                    <span class="no-icon">Log out</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="content">
                <div class="container-fluid">
            
                    <div class="section">
                        

            

                <!-- Comment 1 -->
							 <form action="" method="post">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">UserComment</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Nội dung</th>
                        <th></th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${comments}" var="Usercmt">
                        <tr>
                            <td>${Usercmt.userCommentId}</td>
                            <td>${Usercmt.name}</td>
                            <td>${Usercmt.email}</td>
                            <td>${Usercmt.text}</td>
                            <td>
                                <!-- Thêm thông tin userCommentId vào mỗi checkbox -->
                                <input type="hidden" name="userCommentIds" value="${Usercmt.userCommentId}">
                                <div class="">
                                
                                    
                                    
                                     
                               
                                    <input class="form-check-input" type="checkbox" name="status" 
                                        value="true" ${Usercmt.status ? 'checked' : ''}>
                                      
                                    <input class="" type="hidden" name="status" 
                                        value="false" ${Usercmt.status ? 'checked' : ''}>
                                     
                                </div>
                            </td>
                            <td>
                           <button  formmethod="get" formaction="/index/admin/updateStatus/${Usercmt.userCommentId}"
				class="btn btn-primary">Cập nhật</button>
				
				<button  formmethod="get" formaction="/index/delete/${Usercmt.userCommentId}"
				class="btn btn-primary">Xoá</button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form>

						

                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                   
                        <p class="copyright text-center">
                
                            <script>
                                document.write(new Date().getFullYear())
                            </script>
                            <a href="">Assits Student Finding School</a>
                        </p>
                    </nav>
                </div>
            </footer>
        </div>
    </div>
    
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!--   Core JS Files   -->
<script src="/views/assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="/views/assets/js/core/popper.min.js" type="text/javascript"></script>
<script src=/views/assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="/views/assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="/views/assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="/views/assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="/views/assets/js/demo.js"></script>
</html>