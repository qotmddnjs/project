<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MAIN"></c:set>
<%@ include file="../common/head.jspf"%>
<meta charset="UTF-8">
<title>${pageTitle }</title>
<link rel="stylesheet" href="/resource/common.css" />
<script src="/resource/common.js" defer="defer"></script>
<!-- 테일윈드 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" />

<!-- daisy ui 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/daisyui/4.6.1/full.css" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>Slick Carousel Example</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>
<body class="mainbody">


	<!-- 검색 창 -->
	<div class="navbar1">
		<!-- 검색 창 -->
		<div class="search-container" style="margin-right: 450px;">
			<form action="/search">
				<input type="text" placeholder="검색..." name="search" style="width: 300px;">
				<button type="submit">검색</button>
			</form>
		</div>
		<div class="login-signup-links">
			<!-- 로그인 링크 -->
			<a class="hover:underline" href="../member/login" style="margin-right: 50px;">로그인</a>

			<!-- 회원가입 링크 -->
			<a class="hover:underline" href="../member/join" style="margin-right: 50px;">회원가입</a>
		</div>


	</div>
	<hr style="border-top: 3px solid white;" />
	<div class="mainback">
		<div class="container">

			<div class="slider">

				<div class="slides">

					<!--  The last slide goes before the first one,
        because the slideshow shows the second slide on load by default. -->
					<div class="slides__img" id=""
						style="background-image: url('https://c.wallhere.com/photos/95/eb/movies_Clash_Of_The_Titans_movie_poster-229043.jpg!d')">
						<div class="slides__img__filter"></div>
						<div class="slide__caption">
							<h1 class="slide__caption__title">Fifth slide</h1>
							<h2 class="slide__caption__subtitle">This is the fifth slide.</h2>
							<h3 class="slide__caption__text">Lorem ipsum dolor sit amet.</h3>
						</div>
					</div>

					<div class="slides__img" id="" style="background-image: url('https://www.wallpaperuse.com/wallp/71-719932_m.jpg')">
						<div class="slides__img__filter"></div>
						<div class="slide__caption">
							<h1 class="slide__caption__title">First slide</h1>
							<h2 class="slide__caption__subtitle">This is the first slide.</h2>
							<h3 class="slide__caption__text">Lorem ipsum dolor sit amet.</h3>
						</div>
					</div>

					<div class="slides__img" id=""
						style="background-image: url('https://c.wallhere.com/photos/fd/f4/movies_Clash_Of_The_Titans_Sam_Worthington_Perseus_Scorpioxs_movie_poster-229052.jpg!d')">
						<div class="slides__img__filter"></div>
						<div class="slide__caption">
							<h1 class="slide__caption__title">Second slide</h1>
							<h2 class="slide__caption__subtitle">This is the second slide.</h2>
							<h3 class="slide__caption__text">Lorem ipsum dolor sit amet.</h3>
						</div>
					</div>

					<div class="slides__img" id=""
						style="background-image: url('https://d2k5miyk6y5zf0.cloudfront.net/article/MYH/20220815/MYH20220815005400038.jpg')">
						<div class="slides__img__filter"></div>
						<div class="slide__caption">
							<h1 class="slide__caption__title">Third slide</h1>
							<h2 class="slide__caption__subtitle">This is the third slide.</h2>
							<h3 class="slide__caption__text">Lorem ipsum dolor sit amet.</h3>
						</div>
					</div>

					<div class="slides__img" id=""
						style="background-image: url('https://images-tv.adobe.com/mpcv3/2bb6da60-1ec0-4a1b-8a9e-7194d1e28abb/bff52858-91d3-41de-8da8-980f6f3c8a7b/c471c327b92047b7b264c8dc40c0db37_1549328091-1920x1080.jpg')">
						<div class="slides__img__filter"></div>
						<div class="slide__caption">
							<h1 class="slide__caption__title">Fourth slide</h1>
							<h2 class="slide__caption__subtitle">This is the fourth slide.</h2>
							<h3 class="slide__caption__text">Lorem ipsum dolor sit amet.</h3>
						</div>
					</div>

				</div>

			</div>
			<!-- / slider -->

			<!-- #Controls -->
			<a class="control fas fa-chevron-left" id="prev"></a> <a class="control fas fa-chevron-right" id="next"></a>

			<!-- #Position dots -->
			<div class="dots">
				<span class="dots__single" id=""></span> <span class="dots__single" id=""></span> <span class="dots__single" id=""></span>
				<span class="dots__single" id=""></span> <span class="dots__single" id=""></span>
			</div>
		</div>

	</div>
	<script>
		/**
		 * @Author: Andrea Alba
		 * @Date:   2018-03-14T21:25:14+01:00
		 * @Email:  subjuliodesign [at] gmail.com
		 * @Project: Responsive Slideshow with jQuery
		 * @Filename: slideshow_final.js
		 * @Last modified by:   Andrea Alba
		 * @Last modified time: 2018-03-23T13:07:33+01:00
		 * @Copyright: subjuliodesign
		 */

		$(document)
				.ready(
						function() {
							//==================================
							// #Slideshow with jQuery
							//==================================

							// id generator
							function idGenerator() {
								$(".slides__img").each(function(index, el) {
									$(this).attr("id", "slide_" + index);
								});
								$(".dots__single").each(function(index, el) {
									$(this).attr("id", "dot_" + index);
								});
							}

							// id extractor
							// at the end it focuses the current dot
							function dotsFocus() {
								$("[id^='dot_']").removeClass("dots__current");
								var id = $(".slides__img:eq(1)").attr("id");
								var n = Number(id.substr(-1));
								if (n === 0) {
									n = $(".slides__img").length;
								}
								$("#dot_" + (n - 1)).addClass("dots__current");
							}

							// slide up caption
							function captionSlideUp(d, e) {
								var $cap1 = $(".slide__caption:eq(1)");
								$cap1.animate({
									bottom : "20%",
									opacity : 1
								}, {
									duration : d,
									easing : e,
									complete : dotsFocus()
								});
							}

							// slide down caption
							function captionSlideDown(d, e) {
								$(".slide__caption").animate({
									bottom : "5%",
									opacity : 0
								}, {
									duration : d,
									easing : e
								});
							}

							// slide movement
							function slideMove(t) {
								if (t === "prev") {
									return $(".slides__img").first().before(
											$(".slides__img").last());
								}
								if (t === "next") {
									return $(".slides__img").last().after(
											$(".slides__img").first());
								}
							}

							// slide images
							function slideIt(l, d, e, t) {
								var $slides = $(".slides");
								captionSlideDown(150, "linear");
								$slides.animate({
									left : l
								}, {
									duration : d,
									easing : e,
									complete : function() {
										$slides.css("left", "-100%");
										slideMove(t);
										captionSlideUp(1700, "swing");
									}
								});
							}

							// slide with dots
							function dotsControl(d, e) {
								$(".dots__single")
										.click(
												function() {
													var currentId = parseInt($(
															".dots__current")
															.attr("id").substr(
																	-1));
													var clickId = parseInt($(
															this).attr("id")
															.substr(-1));
													var max = $(".dots__single").length - 1;
													var half = Math
															.floor($(".dots__single").length / 2);
													var diff;
													if (currentId > clickId) {
														diff = currentId
																- clickId;
														if (diff === max) {
															diff = 1;
															l = "-200%";
															t = "next";
														} else if (diff <= half) {
															l = "0%";
															t = "prev";
														} else {
															diff--;
															l = "-200%";
															t = "next";
														}
													}
													if (currentId < clickId) {
														diff = clickId
																- currentId;
														if (diff === max) {
															diff = 1;
															l = "0%";
															t = "prev";
														} else if (diff <= half) {
															l = "-200%";
															t = "next";
														} else {
															diff--;
															l = "0%";
															t = "prev";
														}
													}
													for (var i = 0; i < diff; i++) {
														slideIt(l, d, e, t);
													}
												});
							}

							// slideshow
							function slideShow(d, e) {
								$("#prev").click(function() {
									var t = $(this).attr("id");
									slideIt("0%", d, e, t);
								});
								$("#next").click(function() {
									var t = $(this).attr("id");
									slideIt("-200%", d, e, t);
								});
								dotsControl(d, e);
							}

							idGenerator();
							captionSlideUp(1700, "swing");
							slideShow(800, "swing");
						});
	</script>
	<body class="mainbody2">
<div class="wrapper">
  <h2>Slick Carousel Example</h2>
  <div class="carousel">
    <div>
      <div class="card">
        <div class="card-header">
          <img src="https://image.tmdb.org/t/p/original/7zV8FTYofAORGm0Umgh1mNNCym8.jpg">
        </div>
        <div class="card-body">
          <div class="card-content">
            <div class="card-title">This is the First slider</div>
          </div>
        </div>
      </div>
    </div>
    <div>
      <div class="card">
        <div class="card-header">
          <img src="https://cdn.chungnamilbo.co.kr/news/photo/202208/672461_256408_3018.jpg">
        </div>
        <div class="card-body">
          <div class="card-content">
            <div class="card-title">This is the Second slider</div>
          </div>
        </div>
      </div>
    </div>
    <div>
      <div class="card">
        <div class="card-header">
          <img src="https://extmovie.com/files/attach/images/135/173/150/018/b3ec125b6209accb853019aefb6370bb.jpg">
        </div>
        <div class="card-body">
          <div class="card-content">
            <div class="card-title">This is the Third slider</div>
          </div>
        </div>
      </div>
    </div>
    <div>
      <div class="card">
        <div class="card-header">
          <img src="https://pbs.twimg.com/media/DkDXC8gU0AEGhpg.jpg:large">
        </div>
        <div class="card-body">
          <div class="card-content">
            <div class="card-title">This is the Fourth slider</div>
          </div>
        </div>
      </div>
    </div>
    <div>
      <div class="card">
        <div class="card-header">
          <img src="https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2020%2F03%2Fmonster-hunter-milla-jovovich-tony-jaa-movie-poster-info-1.jpg?cbr=1&q=90">
        </div>
        <div class="card-body">
          <div class="card-content">
            <div class="card-title">This is the Fifth slider</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script>
  $(document).ready(function () {
    $('.carousel').slick({
      speed: 500,
      slidesToShow: 4,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 2000,
      dots: true,
      centerMode: true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1,
          }
        },
        {
          breakpoint: 800,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2,
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
          }
        }
      ]
    });
  });
</script>
</body>




</body>

<%@ include file="../common/foot.jspf"%>