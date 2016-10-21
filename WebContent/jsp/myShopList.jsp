<!DOCTYPE jsp>
<jsp lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jsp5 Shim and Respond.js IE8 support of jsp5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/jsp5shiv/3.7.0/jsp5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




<script language="javascript"> 

function openUpdateShopForm(snum) {
   window.open("updateShopForm?snum="+snum, 'UpdateShop', 'width=500, height=550, menubar="no", toolbar="no"');
}

function openAddShopForm() {
   
   window.open("addShopForm", 'AddShop', 'width=500, height=550, menubar="no", toolbar="no"');
   }

	


</script>

</script> 





</head>
 
<body>
<%@include file="header.jsp" %>
    <!-- Navigation -->
     

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">My Shop List
                    <small>강남역 지하상가</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">My Shop List</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        
        <hr>
        
        <!-- Shop list -->
        <c:forEach items="${shopList}" var="shop">
<%--         ${shop.simage} --%>
        <div class="row">
            <div class="col-md-7">
                <a href="shopInfo?snum=${shop.snum}">
                   
                    <img src="resources/img/m1.jpg" width="500" height="300">
                </a>
            </div>
            <div class="col-md-5">
                <font size="5" color="green">${shop.sname}</font>
                <br>
   
         <h3>${shop.gccategory}</h3>
        
<%--                 <h4>${shop.intro}</h4> --%>
                <br><br><br><br><br>
                 <a class="btn btn-info"  href="javascript:openUpdateShopForm(${shop.snum})">수정</a>
             <a class="btn btn-warning"  href="emptyShop?snum=${shop.snum}">삭제</a>  
                
                <a class="btn btn-success" href="myShopInfo?snum=${shop.snum}">상품 관리</a>
           </div>
        </div>
        <!-- /.row -->
        <hr>
      </c:forEach>
      
        <hr>

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

      
        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2016</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

</body>

</html>