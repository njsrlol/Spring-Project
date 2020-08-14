<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>mainPage</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Products/css/mainstyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Products/css/style.css">

</head>
<script>
$(document).ready(function () {
	  $("a#pageLink").click(function () {
	    $("a#pageLink").removeClass("active");
	    $(this).addClass("active");
	  });

	  $(".menu-button").click(function () {
	    $(".left-area").removeClass("hide-on-mobile");
	  });

	  $(".close-menu").click(function () {
	    $(".left-area").addClass("hide-on-mobile");
	  });

	  $(".more-button").click(function () {
	    $(".more-menu-list").toggle("hide");
	  });

	  var owl = $("#owl-slider-1");
	  $("#owl-slider-1").owlCarousel({
	    navigation: true,
	    slideSpeed: 400,
	    paginationSpeed: 400,
	    items: 1,
	    itemsDesktop: false,
	    itemsDesktopSmall: false,
	    itemsTablet: false,
	    itemsMobile: false,
	    autoplay: true,
	    autoPlaySpeed: 200,
	    autoPlayTimeout: 100,
	    autoplayHoverPause: true
	  });
	  // Custom Navigation Events
	  $(".owl-next").click(function () {
	    owl.trigger("owl.next");
	  });
	  $(".owl-prev").click(function () {});

	  $(".play").click(function () {
	    owl.trigger("owl.play", 100);
	  });
	  $(".stop").click(function () {
	    owl.trigger("owl.stop");
	  });

	  var owl = $("#owl-slider-2");
	  owl.owlCarousel({
	    navigation: true,
	    slideSpeed: 400,
	    paginationSpeed: 400,
	    responsive: {
	      0: {
	        items: 1
	      },
	      600: {
	        items: 2
	      },
	      1000: {
	        items: 4
	      }
	    }
	  });

	  var owl = $("#owl-slider-3");
	  owl.owlCarousel({
	    navigation: true,
	    slideSpeed: 400,
	    paginationSpeed: 400,
	    responsive: {
	      0: {
	        items: 1
	      },
	      600: {
	        items: 2
	      },
	      1000: {
	        items: 4
	      }
	    }
	  });
	});
</script>
<body>

<div class="wrapper">
<nav>
  <ul>
    <li><a href="${root }mainpage">MainPage</a></li>
    <li><a href="${root }freshfood">FreshFood</a></li>
    <li><a href="${root }miniPro">Ministop-product</a></li>
  </ul>
</nav>
</div>
<!-- partial -->
<!-- partial:index.partial.html -->
<div id="body1">

    <div class="page-right-content">
      <div class="content-line content-line-hero">
        <div class="line-header">
          <span class="header-text">신상품</span>
        </div>
        <div class="slider-wrapper owl-carousel owl-theme owl-loaded owl-drag" id="owl-slider-1">
          <div class="item hero-img-wrapper img-1">
            <div class="upload-text-wrapper">
              <p class="upload-text-header">The </p>
              <p class="upload-text-info">By Pravin <span> 20 minutes ago</span></p>
            </div>
            <img src="https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2240&q=80" alt="SlideShow">
          </div>
          <div class="item hero-img-wrapper img-2">
            <div class="upload-text-wrapper">
              <p class="upload-text-header">History of Art</p>
              <p class="upload-text-info">By Pravin <span> 10 minutes ago</span></p>
            </div>
            <img src="https://images.unsplash.com/photo-1485518994577-6cd6324ade8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2144&q=80" alt="SlideShow">
          </div>
          <div class="item hero-img-wrapper img-3">
            <div class="upload-text-wrapper">
              <p class="upload-text-header">Van Life</p>
              <p class="upload-text-info">By Tess <span> 3 days ago</span></p>
            </div>
            <img src="https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2208&q=80" alt="SlideShow">
          </div>
        </div>
      </div>
      
      
      
      <div class="content-line content-line-list">
        <div class="line-header">
          <span class="header-text">1+1 상품</span>
        </div>
        <div id="owl-slider-2" class="slider-wrapper owl-carousel">
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div class="content-line content-line-list">
        <div class="line-header">
          <span class="header-text">할인상품</span>
        </div>
        <div id="owl-slider-3" class="slider-wrapper owl-carousel">
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          </div>
        </div>
        
        
        
      </div>
    </div>
  <script src='${pageContext.request.contextPath}/Products/css/owl.carousel.min.js'></script>
<script src='${pageContext.request.contextPath}/Products/css/scarousel.min2.js'></script><script  src="./script.js"></script>
<script href="${pageContext.request.contextPath}/Products/css/mainscript.css"></script>
</body>
</html>