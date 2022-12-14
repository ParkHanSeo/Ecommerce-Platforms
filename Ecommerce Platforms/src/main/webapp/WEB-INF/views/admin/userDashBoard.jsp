<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>내담씨앤씨</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/main.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/main.js"></script>
    <script>
      // url '+, &' 인코딩 처리
      function hashtagLink(url, param) {
        var encParam = param.replace(/&/g, "%26").replace(/\+/g, "%2B");
        location.href = url + encParam;
      }
    </script>
    <script>
      var business_num = "";
      var businessDetail_num = "";
    </script>
  </head>
  <body>
    <div id="wrap">
	<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
		<section id="container">
			<div id="contents">
				<div class="visual-wrapper section">
					<div class="visual-slider swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1687px, 0px, 0px);">
							<div class="swiper-slide swiper-slide-duplicate-next" data-swiper-slide-index="0" style="width: 241px">
								<div class="view" style="background-image: url(${pageContext.request.contextPath}/resources/user/images/main/fix_main_itservice_1-1.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="400" data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												IT서비스 업계 최초 <br />‘인간 중심’의 AI윤리원칙 선포
											</h2>
											<p class="description">
												AI기술을 활용할 때 구성원들이 반드시 실천해야 할 <br />5대 원칙을 만들었습니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/sustainability/compliance/ai_ethics" class="common-btn is-white2"> 
												<span>솔루션 보기</span> 
												<i class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="1" style="width: 241px">
								<div class="view" style="background-image: url(${pageContext.request.contextPath}/resources/user/images/main/fix_main_scm_1-3.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="400" data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												공급망 투명석과 지속가능성의 <br /> 구축을 위한 SCM 기술
											</h2>
											<p class="description">
												SCM을 통한 인공지능, 머신 러님, 예측 분석을 이용하여 <br /> 신속성과 탄력성을 향상시킬 수 있습니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/tech/ai_audio" class="common-btn is-white2"> 
												<span>솔루션 보기</span> 
												<i class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="2" style="width: 241px">
								<div class="view" style="background-image: url(${pageContext.request.contextPath}/resources/user/images/main/fix_main_divitalTwin_1-5.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="400" data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												Digital Twin 플랫폼을 통한 <br />'산업현장'의 안전/관리 완전성
											</h2>
											<p class="description">
												다양한 고객의 Needs를 수용할 수 있는 <br />
												Digital Twin기반의 SMART 관제시스템 구축하고 있습니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/news/press_release/detail/560?ca=ALL" class="common-btn is-white2">
												<span>솔루션 보기</span> 
												<i class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="3" style="width: 241px">
								<div class="view" style="background-image: url(${pageContext.request.contextPath}/resources/user/images/main/fix_main_visionAi_1-2.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="400" data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												Vision AI의 딥러닝의 <br /> 빅데이터를 기반의 솔루션
											</h2>
											<p class="description">
												객체인식 및 인공지능, 이미지 분류, 사고예방 등 <br />...
											</p>
										</div>
										<div class="btn-area">
											<a enetworks.co.kr/news/press_release/detail/547?ca=ALL" class="common-btn is-white2"> 
												<span>솔루션 보기</span> 
												<i class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-active" data-swiper-slide-index="4" style="width: 241px">
								<div class="view" style=" background-image: url(${pageContext.request.contextPath}/resources/user/images/main/fix_main_cloud_1-1.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="400" data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												Cloud MSP 기술로 <br />시스템 구축
											</h2>
											<p class="description">
												클라우드 전환 관련 컨설팅, 디자인 및 개발 등 <br />제반 시스템의 서비스를 제공합니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/business/nft" class="common-btn is-white2"> 
												<span>솔루션 보기</span> 
												<i class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
					</div>
					<div class="swiper-info-area">
						<div class="inner">
							<div class="slider-timer" style="display: block">
								<button type="button" class="btn-control">정지</button>
								<svg class="progress" width="64px" height="64px" viewBox="0 0 64 64">
				                    <circle cx="32" cy="32" r="32" class="top" style="stroke-dashoffset: 55.9282px"></circle>
				                    <circle cx="32" cy="32" r="32" class="bottom"></circle>
                  				</svg>
							</div>
							<div class="fraction swiper-pagination-custom">
								<span class="current-num">5</span> 
								<span class="div">|</span> 
								<span class="total-num">5</span>
							</div>
						</div>
					</div>
					<div class="scroll-guide-area">
						<div class="scroll-guide">
							<span class="blind">Scroll Down</span>
						</div>
					</div>
				</div>
				<div class="nft-wrap section">
					<div class="inner_container">
						<a href="/business/nft">
							<h3 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
								고객사의 고객 만족 및 내부 경쟁력 향상
							</h3>
							<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
								(주)내담C&C는 축적된 경험 및 Knowhow와 이를 뒷받침 해주는 전문화된 Skill 및 Solution을 기반으로 
								<br />고객사의 고객 만족 및 내부 경쟁력 향상을 이끌어 내어 한단계 업그레이드 시키는 것을 Mission으로 하고 있으며 
								<br />나아가 글로벌 경쟁력을 갖춘 IT Total Service Provider 기업으로의 성장을 비전으로 하고 있습니다.
							</p>
						</a>
						<div class="btn-area aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
							<a href="/business/nft" class="common-btn is-white">
								<span>기업 알아보기</span>
								<i class="icon link-arrow2"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="bg-responsive-container">
					<div class="core-wrap section">
						<div class="inner_container">
							<div class="section-title-area">
								<a href="/tech/rnd">
									<h2 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">주요 사업</h2>
									<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										(주)내담C&amp;은 친환경, 4차 산업혁명, DT(Digital Transformation), AI, Cloud, DT(Digital Twin) 등의 경쟁력이 필요한 시점을 맞이하여, 
										<br />고객의 성공적인 비즈니스를 위해 최적의 시스템을 제공합니다.
									</p>
								</a>
								<div class="btn-area aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									<a href="/tech/rnd" class="common-btn is-white"> 
										<span>확인하기</span>
										<i class="icon link-arrow2"></i>
									</a>
								</div>
							</div>
							<ul class="core-list">
								<li class="ai aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									<div class="bg-text aos-init" data-aos="svg-stroke" data-aos-offset="0">
										<svg class="naedamcnc" height="100%" stroke-miterlimit="10" style="fill-rule:nonzero;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;" version="1.1" viewBox="0 0 3370.82 2384.24" width="100%" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:vectornator="http://vectornator.io" xmlns:xlink="http://www.w3.org/1999/xlink">
					                        <defs>
					                          <linearGradient x1="50%" y1="200%" x2="200%" y2="200%" id="biglinearGradient-1">
					                            <stop stop-color="#97DBF3" offset="0%"></stop>
					                            <stop stop-color="#97D1F3" offset="50%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="82.1663062%" y2="100%" id="biglinearGradient-2">
					                            <stop stop-color="#97D1F3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97CEF3" offset="100%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-3">
					                            <stop stop-color="#97CEF3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97C5F3" offset="100%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-4">
					                            <stop stop-color="#97C5F3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97BCF3" offset="100%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-5">
					                            <stop stop-color="#97BCF3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97B3F3" offset="99.9399038%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-6">
					                            <stop stop-color="#97B3F3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97A9F3" offset="99.9399038%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-7">
					                            <stop stop-color="#97A9F3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97A0F3" offset="100%"></stop>
					                          </linearGradient>
					                        </defs>
											<g id="레이어-1" vectornator:layerName="레이어 1">
												<g fill="#fff" opacity="1" stroke="#9bcc6a" stroke-linecap="butt" stroke-linejoin="round" stroke-width="3">
													<path id="naedamPath1" stroke="url(#biglinearGradient-1)" d="M759.073 1402.52L588.407 1106.45L588.732 1402.71L507.523 1402.8L507.065 985.717L598.461 985.617L764.877 1276.6L764.558 985.434L845.767 985.345L846.225 1402.43L759.073 1402.52Z"/>
													<path id="naedamPath2" stroke="url(#biglinearGradient-2)" d="M1132.34 985.031L1280.5 1401.95L1185.99 1402.05L1159.01 1316.35L1005.37 1316.52L976.6 1402.28L885.487 1402.38L1033.87 985.139L1132.34 985.031ZM1082.36 1080.44L1028.77 1244.62L1134.6 1244.5L1082.36 1080.44Z"/>
													<path id="naedamPath3" stroke="url(#biglinearGradient-3)" d="M1639.42 1326.57L1639.5 1401.56L1323.44 1401.9L1322.98 984.822L1628.86 984.486L1628.94 1058.34L1408.23 1058.58L1408.33 1147.15L1610.93 1146.92L1611.01 1219.36L1408.41 1219.58L1408.53 1326.83L1639.42 1326.57Z"/>
													<path id="naedamPath4" stroke="url(#biglinearGradient-4)" d="M2009.72 1046.04C2024.27 1066.77 2034.2 1089.21 2039.51 1113.35C2044.81 1137.49 2047.48 1160.5 2047.5 1182.38C2047.56 1237.84 2036.49 1284.82 2014.27 1323.33C1984.14 1375.24 1937.58 1401.23 1874.57 1401.3L1694.89 1401.5L1694.44 984.414L1874.12 984.217C1899.96 984.566 1921.47 987.561 1938.64 993.201C1967.89 1002.79 1991.58 1020.4 2009.72 1046.04ZM1939.03 1090.54C1925.61 1067.92 1899.1 1056.63 1859.48 1056.67L1779.12 1056.76L1779.42 1328.97L1859.78 1328.88C1900.9 1328.83 1929.55 1308.52 1945.73 1267.95C1954.57 1245.68 1958.98 1219.17 1958.94 1188.42C1958.9 1145.98 1952.26 1113.35 1939.03 1090.54Z"/>
													<path id="naedamPath5" stroke="url(#biglinearGradient-5)" d="M2318.29 983.73L2466.45 1400.65L2371.95 1400.75L2344.97 1315.05L2191.32 1315.21L2162.56 1400.98L2071.44 1401.08L2219.82 983.838L2318.29 983.73ZM2268.31 1079.14L2214.73 1243.32L2320.56 1243.2L2268.31 1079.14Z"/>
													<path id="naedamPath6" stroke="url(#biglinearGradient-6)" d="M2749.06 1400.34L2664.46 1400.43L2585.69 1050.5C2585.7 1058.42 2585.81 1069.69 2586.01 1084.31C2586.22 1098.93 2586.32 1110.3 2586.33 1118.41L2586.64 1400.52L2505.43 1400.61L2504.98 983.525L2631.74 983.386L2707.93 1311.25L2782.84 983.22L2908.19 983.083L2908.65 1400.16L2827.44 1400.25L2827.13 1118.14C2827.12 1110.03 2827.2 1098.67 2827.38 1084.05C2827.55 1069.43 2827.63 1058.16 2827.62 1050.23L2749.06 1400.34Z"/>
												</g>
											</g>
										</svg>
									</div> 
									<div class="main_aos_naedam_txt">
										<h3 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">If you with NaedamC&C</h3>
										<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											SCM(Supply Chain Management, 공급망 관리), 
											<br />PLM(Product Lifecycle Management), CRM, MES, 
											<br />EIP(Enterprise Information Portal) 등 
											<br />다양한 IT분야에서의 구축 경험을 토대로 고객사를 위한 다양한 솔루션과 서비스를 제공합니다.
										</p>
										<p class="btn-arrow aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											<span class="blind">자세히 보기</span>
										</p>
									</div>									
									<a href="/tech/ai_language"></a>
								</li>
								<li class="big-data aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									<div class="bg-text aos-init" data-aos="svg-stroke" data-aos-offset="0">
									<svg class="cunsulting" height="100%" stroke-miterlimit="10" style="fill-rule:nonzero;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;" version="1.1" viewBox="0 0 3370.82 2384.24" width="100%" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:vectornator="http://vectornator.io" xmlns:xlink="http://www.w3.org/1999/xlink">
				                        <title>컨설팅 사업부</title>
				                        <defs>
				                          <linearGradient x1="50%" y1="200%" x2="200%" y2="200%" id="biglinearGradient-1">
				                            <stop stop-color="#A9F5D2" offset="0%"></stop>
				                            <stop stop-color="#97F3E8" offset="50%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="82.1663062%" y2="100%" id="biglinearGradient-2">
				                            <stop stop-color="#A9F5D2" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97F3E8" offset="100%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-3">
				                            <stop stop-color="#A9F5D2" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97F3E8" offset="100%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-4">
				                            <stop stop-color="#A9F5D2" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97F3E8" offset="100%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-5">
				                            <stop stop-color="#A9F5D2" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97F3E8" offset="99.9399038%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-6">
				                            <stop stop-color="#A9F5D2" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97F3E8" offset="99.9399038%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-7">
				                            <stop stop-color="#A9F5D2" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97F3E8" offset="100%"></stop>
				                          </linearGradient>
				                        </defs>
										<g id="레이어-1" vectornator:layerName="레이어 1">
											<g fill="#fff" opacity="1" stroke="#8e8f91" stroke-linecap="butt" stroke-linejoin="round" stroke-width="1">
												<path id="bigPath1" d="M312.92 1315.93C262.78 1315.93 223.361 1299.84 194.665 1267.68C165.969 1235.35 151.62 1191.05 151.62 1134.76C151.62 1073.9 167.939 1026.99 200.578 994.036C228.959 965.34 265.066 950.992 308.899 950.992C367.553 950.992 410.44 970.228 437.56 1008.7C452.539 1030.3 460.58 1051.98 461.684 1073.74L388.839 1073.74C384.109 1057.03 378.038 1044.41 370.628 1035.9C357.383 1020.76 337.753 1013.19 311.737 1013.19C285.248 1013.19 264.356 1023.88 249.062 1045.24C233.768 1066.61 226.121 1096.84 226.121 1135.94C226.121 1175.04 234.201 1204.33 250.363 1223.8C266.524 1243.28 287.061 1253.01 311.974 1253.01C337.517 1253.01 356.989 1244.66 370.391 1227.94C377.802 1218.96 383.951 1205.48 388.839 1187.5L460.974 1187.5C454.667 1225.5 438.545 1256.4 412.608 1280.21C386.671 1304.02 353.441 1315.93 312.92 1315.93Z"/>
												<path id="bigPath2" d="M784.992 987.65C820.153 1019.66 837.733 1067.59 837.733 1131.45C837.733 1194.04 820.153 1241.98 784.992 1275.25C758.661 1302.37 720.583 1315.93 670.758 1315.93C620.933 1315.93 582.855 1302.37 556.524 1275.25C521.205 1241.98 503.546 1194.04 503.546 1131.45C503.546 1067.59 521.205 1019.66 556.524 987.65C582.855 960.531 620.933 946.971 670.758 946.971C720.583 946.971 758.661 960.531 784.992 987.65ZM670.758 1008.7C641.904 1008.7 618.884 1019.34 601.697 1040.63C584.511 1061.91 575.918 1092.19 575.918 1131.45C575.918 1170.71 584.511 1200.98 601.697 1222.27C618.884 1243.55 641.904 1254.2 670.758 1254.2C699.612 1254.2 722.514 1243.55 739.464 1222.27C756.414 1200.98 764.889 1170.71 764.889 1131.45C764.889 1092.35 756.414 1062.11 739.464 1040.75C722.514 1019.38 699.612 1008.7 670.758 1008.7Z"/>
												<path id="bigPath3" d="M1102.39 1306.23L960.009 1058.6L960.009 1306.23L892.131 1306.23L892.131 957.614L968.523 957.614L1107.35 1200.98L1107.35 957.614L1175.23 957.614L1175.23 1306.23L1102.39 1306.23Z"/>
												<path id="bigPath4" d="M1361.36 1093.37L1421.44 1107.8C1447.77 1114.1 1467.64 1122.54 1481.04 1133.1C1501.85 1149.5 1512.26 1173.23 1512.26 1204.29C1512.26 1236.14 1500.08 1262.59 1475.72 1283.64C1451.36 1304.69 1416.94 1315.22 1372.48 1315.22C1327.07 1315.22 1291.36 1304.85 1265.34 1284.11C1239.33 1263.38 1226.32 1234.88 1226.32 1198.62L1295.85 1198.62C1298.06 1214.54 1302.4 1226.45 1308.86 1234.33C1320.69 1248.68 1340.95 1255.85 1369.64 1255.85C1386.83 1255.85 1400.78 1253.96 1411.5 1250.18C1431.84 1242.92 1442.01 1229.44 1442.01 1209.73C1442.01 1198.22 1436.97 1189.31 1426.88 1183.01C1416.79 1176.86 1400.94 1171.42 1379.34 1166.69L1342.44 1158.41C1306.18 1150.21 1281.11 1141.3 1267.23 1131.68C1243.74 1115.6 1231.99 1090.45 1231.99 1056.24C1231.99 1025.02 1243.35 999.082 1266.05 978.427C1288.76 957.771 1322.1 947.444 1366.09 947.444C1402.83 947.444 1434.17 957.18 1460.11 976.653C1486.04 996.125 1499.64 1024.39 1500.91 1061.44L1430.9 1061.44C1429.64 1040.47 1420.49 1025.57 1403.46 1016.74C1392.11 1010.91 1378 1007.99 1361.13 1007.99C1342.37 1007.99 1327.39 1011.77 1316.19 1019.34C1305 1026.91 1299.4 1037.48 1299.4 1051.03C1299.4 1063.49 1304.92 1072.79 1315.95 1078.94C1323.05 1083.04 1338.19 1087.85 1361.36 1093.37Z"/>
												<path id="bigPath5" d="M1829.18 1258.45C1807.74 1296.29 1766.82 1315.22 1706.43 1315.22C1646.04 1315.22 1605.05 1296.29 1583.45 1258.45C1571.94 1237.8 1566.18 1208.94 1566.18 1171.89L1566.18 957.614L1640.21 957.614L1640.21 1171.89C1640.21 1195.86 1643.05 1213.36 1648.72 1224.4C1657.55 1243.95 1676.79 1253.72 1706.43 1253.72C1735.92 1253.72 1755.07 1243.95 1763.9 1224.4C1769.58 1213.36 1772.42 1195.86 1772.42 1171.89L1772.42 957.614L1846.45 957.614L1846.45 1171.89C1846.45 1208.94 1840.69 1237.8 1829.18 1258.45Z"/>
												<path id="bigPath6" d="M1988.82 957.614L1988.82 1243.55L2161.48 1243.55L2161.48 1306.23L1915.98 1306.23L1915.98 957.614L1988.82 957.614Z"/>
												<path id="bigPath7" d="M2147.05 957.614L2429.44 957.614L2429.44 1019.34L2325.14 1019.34L2325.14 1306.23L2251.82 1306.23L2251.82 1019.34L2147.05 1019.34L2147.05 957.614Z"/>
												<path id="bigPath8" d="M2466.34 957.614L2538.71 957.614L2538.71 1306.23L2466.34 1306.23L2466.34 957.614Z"/>
												<path id="bigPath9" d="M2815.66 1306.23L2673.28 1058.6L2673.28 1306.23L2605.4 1306.23L2605.4 957.614L2681.8 957.614L2820.63 1200.98L2820.63 957.614L2888.5 957.614L2888.5 1306.23L2815.66 1306.23Z"/>
												<path id="bigPath10" d="M3110.35 1008.7C3082.28 1008.7 3059.22 1019.3 3041.17 1040.51C3023.12 1061.72 3014.09 1093.61 3014.09 1136.18C3014.09 1179.07 3023.87 1209.42 3043.42 1227.23C3062.97 1245.05 3085.2 1253.96 3110.11 1253.96C3134.55 1253.96 3154.58 1246.9 3170.19 1232.79C3185.8 1218.68 3195.41 1200.19 3199.04 1177.33L3118.39 1177.33L3118.39 1119.15L3263.61 1119.15L3263.61 1306.23L3215.36 1306.23L3208.03 1262.71C3194 1279.27 3181.38 1290.93 3170.19 1297.71C3150.95 1309.54 3127.3 1315.45 3099.23 1315.45C3053.04 1315.45 3015.19 1299.45 2985.71 1267.44C2954.96 1235.28 2939.59 1191.28 2939.59 1135.47C2939.59 1079.02 2955.12 1033.77 2986.18 999.712C3017.24 965.655 3058.32 948.626 3109.4 948.626C3153.71 948.626 3189.3 959.861 3216.19 982.329C3243.07 1004.8 3258.48 1032.82 3262.43 1066.41L3190.76 1066.41C3185.24 1042.6 3171.76 1025.96 3150.32 1016.5C3138.34 1011.3 3125.01 1008.7 3110.35 1008.7Z"/>
											</g>
										</g>
									</svg>		                      
									</div> 
									<div class="main_aos_consulting_txt">
										<h3 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">컨설팅 사업부</h3>
										<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											빅데이터 분석 역량과 솔루션 경쟁력을 더해<br /> 데이터 생태계를 강화하는데 앞장섭니다.
										</p>
										<p class="btn-arrow aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											<span class="blind">자세히 보기</span>
										</p>
									</div>									
									<a href="/business/big_data">
								</a>
								</li>
								<li class="blockchain aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									<div class="bg-text aos-init" data-aos="svg-stroke" data-aos-offset="0">
										<svg class="si" height="100%" stroke-miterlimit="10" style="fill-rule:nonzero;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;" version="1.1" viewBox="0 0 3370.82 2384.24" width="100%" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:vectornator="http://vectornator.io" xmlns:xlink="http://www.w3.org/1999/xlink">
											<title>SI사업부</title>
											<defs>
					                          <linearGradient x1="0%" y1="50%" x2="100%" y2="50%" id="blocklinearGradient-1">
					                            <stop stop-color="#97A0F3" offset="0%"></stop>
					                            <stop stop-color="#979AF3" offset="100%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="50%" x2="100%" y2="50%" id="blocklinearGradient-2">
					                            <stop stop-color="#979AF3" offset="0%"></stop>
					                            <stop stop-color="#9797F3" offset="100%"></stop>
					                          </linearGradient>
											</defs>
											<g id="레이어-1" vectornator:layerName="레이어 1">
												<g fill="#fff" opacity="1" stroke="#e9cd14" stroke-linecap="butt" stroke-linejoin="round" stroke-width="1">
													<path id="blockPath1" stroke="url(#blocklinearGradient-1)" clip-path="url(#TextBounds)" d="M1522.49 1140.25L1646.51 1170.03C1700.87 1183.05 1741.89 1200.47 1769.56 1222.28C1812.52 1256.13 1834.01 1305.12 1834.01 1369.25C1834.01 1435.01 1808.86 1489.61 1758.57 1533.07C1708.28 1576.53 1637.23 1598.25 1545.43 1598.25C1451.68 1598.25 1377.95 1576.85 1324.24 1534.05C1270.53 1491.24 1243.68 1432.4 1243.68 1357.53L1387.23 1357.53C1391.79 1390.41 1400.74 1414.99 1414.09 1431.26C1438.5 1460.88 1480.33 1475.7 1539.58 1475.7C1575.06 1475.7 1603.87 1471.79 1626 1463.98C1667.99 1449 1688.99 1421.17 1688.99 1380.48C1688.99 1356.72 1678.57 1338.33 1657.74 1325.3C1636.91 1312.61 1604.19 1301.38 1559.59 1291.61L1483.42 1274.52C1408.55 1257.6 1356.8 1239.2 1328.15 1219.35C1279.65 1186.14 1255.4 1134.22 1255.4 1063.59C1255.4 999.133 1278.83 945.585 1325.71 902.942C1372.58 860.298 1441.43 838.977 1532.25 838.977C1608.1 838.977 1672.79 859.078 1726.34 899.279C1779.89 939.481 1807.97 997.831 1810.57 1074.33L1666.04 1074.33C1663.44 1031.03 1644.56 1000.27 1609.4 982.043C1585.96 969.999 1556.83 963.977 1522 963.977C1483.26 963.977 1452.34 971.789 1429.22 987.414C1406.11 1003.04 1394.56 1024.85 1394.56 1052.84C1394.56 1078.56 1405.95 1097.77 1428.74 1110.46C1443.38 1118.92 1474.63 1128.85 1522.49 1140.25Z"/>
													<path id="blockPath2" stroke="url(#blocklinearGradient-2)" clip-path="url(#TextBounds)" d="M1933.62 859.973L2083.03 859.973L2083.03 1579.7L1933.62 1579.7L1933.62 859.973Z"/>
												</g>
											</g>
										</svg>				                     	 
										</div> 
										<a href="/tech/blockchain">
											<h3 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
												SI사업부</h3>
											<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
												내담씨앤씨는 공공, 금융, 통신, 전자상거래, 제조, 인프라 등 
												<br/>다양한 산업영역의 전문적인 IT 서비스 수행을 통해 축적한 Know How를 기반으로
												<br/>컨설팅, Application 개발/운영 서비스까지 고객사에서 필요로하는 IT영역의 Total Service를 제공하고 있습니다.
											</p>
											<p class="btn-arrow aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
												<span class="blind">자세히 보기</span>
											</p>
										</a>
								</li>
								<li class="cloud">
									<div class="bg-text aos-init" data-aos="svg-stroke" data-aos-offset="0">
									<svg class="solution" height="100%" stroke-miterlimit="10" style="fill-rule:nonzero;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;" version="1.1" viewBox="0 0 3370.82 2384.24" width="100%" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:vectornator="http://vectornator.io" xmlns:xlink="http://www.w3.org/1999/xlink">
										<linearGradient x1="0%" y1="58.8120299%" x2="100%" y2="58.8120299%" id="cloudlinearGradient-1">
										  <stop stop-color="#C597F3" offset="0.0655594406%"></stop>
										  <stop stop-color="#D497F3" offset="100%"></stop>
										</linearGradient>
										<linearGradient x1="0%" y1="58.8120299%" x2="100%" y2="58.8120299%" id="cloudlinearGradient-2">
										  <stop stop-color="#D497F3" offset="0.0655594406%"></stop>
										  <stop stop-color="#DA97F3" offset="100%"></stop>
										</linearGradient>
										<linearGradient x1="0%" y1="58.8120299%" x2="100%" y2="58.8120299%" id="cloudlinearGradient-3">
										  <stop stop-color="#DA97F3" offset="0.0655594406%"></stop>
										  <stop stop-color="#EA97F3" offset="100%"></stop>
										</linearGradient>
										<linearGradient x1="0%" y1="58.8120299%" x2="100%" y2="58.8120299%" id="cloudlinearGradient-4">
										  <stop stop-color="#EA97F3" offset="0.0655594406%"></stop>
										  <stop stop-color="#F397ED" offset="100%"></stop>
										</linearGradient>
										<linearGradient x1="0%" y1="58.8120299%" x2="100%" y2="58.8120299%" id="cloudlinearGradient-5">
										  <stop stop-color="#F397ED" offset="0.0655594406%"></stop>
										  <stop stop-color="#F397DE" offset="99.9371722%"></stop>
										</linearGradient>
										<g id="레이어-1" vectornator:layerName="레이어 1">
											<g fill="#fff" opacity="1" stroke="#42657f" stroke-linecap="butt" stroke-linejoin="round" stroke-width="3">
												<path id="cloudPath1" d="M192.818 1182.41L263.153 1199.31C293.982 1206.69 317.242 1216.57 332.934 1228.94C357.302 1248.13 369.486 1275.92 369.486 1312.28C369.486 1349.58 355.225 1380.54 326.703 1405.19C298.182 1429.83 257.892 1442.16 205.833 1442.16C152.666 1442.16 110.853 1430.02 80.3931 1405.74C49.9332 1381.47 34.7032 1348.1 34.7032 1305.64L116.114 1305.64C118.699 1324.28 123.775 1338.22 131.344 1347.45C145.19 1364.25 168.912 1372.65 202.51 1372.65C222.632 1372.65 238.969 1370.44 251.523 1366.01C275.337 1357.51 287.244 1341.73 287.244 1318.65C287.244 1305.18 281.337 1294.75 269.522 1287.36C257.707 1280.16 239.154 1273.79 213.863 1268.26L170.665 1258.56C128.206 1248.97 98.8537 1238.53 82.6084 1227.27C55.1021 1208.44 41.349 1179 41.349 1138.94C41.349 1102.39 54.6406 1072.02 81.2239 1047.84C107.807 1023.65 146.851 1011.56 198.356 1011.56C241.369 1011.56 278.06 1022.96 308.427 1045.76C338.795 1068.56 354.717 1101.65 356.194 1145.03L274.229 1145.03C272.752 1120.48 262.045 1103.03 242.108 1092.7C228.816 1085.87 212.294 1082.45 192.541 1082.45C170.573 1082.45 153.035 1086.88 139.928 1095.74C126.821 1104.6 120.268 1116.97 120.268 1132.85C120.268 1147.43 126.729 1158.32 139.652 1165.52C147.959 1170.32 165.681 1175.95 192.818 1182.41Z"/>
												<path id="cloudPath2" d="M746.912 1058.64C788.079 1096.11 808.663 1152.23 808.663 1227C808.663 1300.29 788.079 1356.41 746.912 1395.36C716.083 1427.11 671.501 1442.99 613.165 1442.99C554.83 1442.99 510.248 1427.11 479.419 1395.36C438.067 1356.41 417.391 1300.29 417.391 1227C417.391 1152.23 438.067 1096.11 479.419 1058.64C510.248 1026.88 554.83 1011.01 613.165 1011.01C671.501 1011.01 716.083 1026.88 746.912 1058.64ZM613.165 1083.28C579.383 1083.28 552.43 1095.74 532.308 1120.66C512.186 1145.59 502.125 1181.03 502.125 1227C502.125 1272.96 512.186 1308.41 532.308 1333.33C552.43 1358.25 579.383 1370.71 613.165 1370.71C646.948 1370.71 673.762 1358.25 693.607 1333.33C713.452 1308.41 723.375 1272.96 723.375 1227C723.375 1181.21 713.452 1145.82 693.607 1120.8C673.762 1095.79 646.948 1083.28 613.165 1083.28Z"/>
												<path id="cloudPath3" d="M1181.66 1375.7C1156.55 1420 1108.65 1442.16 1037.94 1442.16C967.239 1442.16 919.242 1420 893.951 1375.7C880.475 1351.51 873.736 1317.73 873.736 1274.35L873.736 1023.47L960.409 1023.47L960.409 1274.35C960.409 1302.41 963.732 1322.9 970.378 1335.82C980.715 1358.71 1003.24 1370.16 1037.94 1370.16C1072.46 1370.16 1094.89 1358.71 1105.23 1335.82C1111.88 1322.9 1115.2 1302.41 1115.2 1274.35L1115.2 1023.47L1201.87 1023.47L1201.87 1274.35C1201.87 1317.73 1195.14 1351.51 1181.66 1375.7Z"/>
												<path id="cloudPath4" d="M1368.57 1023.47L1368.57 1358.25L1570.72 1358.25L1570.72 1431.63L1283.28 1431.63L1283.28 1023.47L1368.57 1023.47Z"/>
												<path id="cloudPath5" d="M1937.62 1375.7C1912.51 1420 1864.61 1442.16 1793.9 1442.16C1723.2 1442.16 1675.2 1420 1649.91 1375.7C1636.44 1351.51 1629.7 1317.73 1629.7 1274.35L1629.7 1023.47L1716.37 1023.47L1716.37 1274.35C1716.37 1302.41 1719.69 1322.9 1726.34 1335.82C1736.68 1358.71 1759.2 1370.16 1793.9 1370.16C1828.43 1370.16 1850.85 1358.71 1861.19 1335.82C1867.84 1322.9 1871.16 1302.41 1871.16 1274.35L1871.16 1023.47L1957.83 1023.47L1957.83 1274.35C1957.83 1317.73 1951.1 1351.51 1937.62 1375.7Z"/>
												<path id="cloudPath6" d="M2005.19 1023.47L2335.81 1023.47L2335.81 1095.74L2213.7 1095.74L2213.7 1431.63L2127.86 1431.63L2127.86 1095.74L2005.19 1095.74L2005.19 1023.47Z"/>
												<path id="cloudPath7" d="M2379.01 1023.47L2463.75 1023.47L2463.75 1431.63L2379.01 1431.63L2379.01 1023.47Z"/>
												<path id="cloudPath8" d="M2857.51 1058.64C2898.68 1096.11 2919.26 1152.23 2919.26 1227C2919.26 1300.29 2898.68 1356.41 2857.51 1395.36C2826.68 1427.11 2782.1 1442.99 2723.76 1442.99C2665.43 1442.99 2620.85 1427.11 2590.02 1395.36C2548.66 1356.41 2527.99 1300.29 2527.99 1227C2527.99 1152.23 2548.66 1096.11 2590.02 1058.64C2620.85 1026.88 2665.43 1011.01 2723.76 1011.01C2782.1 1011.01 2826.68 1026.88 2857.51 1058.64ZM2723.76 1083.28C2689.98 1083.28 2663.03 1095.74 2642.91 1120.66C2622.78 1145.59 2612.72 1181.03 2612.72 1227C2612.72 1272.96 2622.78 1308.41 2642.91 1333.33C2663.03 1358.25 2689.98 1370.71 2723.76 1370.71C2757.55 1370.71 2784.36 1358.25 2804.21 1333.33C2824.05 1308.41 2833.97 1272.96 2833.97 1227C2833.97 1181.21 2824.05 1145.82 2804.21 1120.8C2784.36 1095.79 2757.55 1083.28 2723.76 1083.28Z"/>
												<path id="cloudPath9" d="M3229.12 1431.63L3062.42 1141.71L3062.42 1431.63L2982.95 1431.63L2982.95 1023.47L3072.39 1023.47L3234.94 1308.41L3234.94 1023.47L3314.41 1023.47L3314.41 1431.63L3229.12 1431.63Z"/>
											</g>
										</g>
									</svg>					                      
									</div> 
									<div class="main_aos_solution_txt">
										<h3 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">Solution</h3>
										<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											회사 또는 영업활동에 필요한 요구사항과 소통을 통해 분석/설계하여<br /> 전산프로그램으로 구현합니다.
											사용 프로그램과 차별화된 맞춤형 개발과 유지보수 지원 <br />
											레거시 시스템과 연계되는 응용 프로그램 개발의뢰도 가능합니다. 
										</p>
										<p class="btn-arrow aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											<span class="blind">자세히 보기</span>
										</p>									
									</div>									
									<a href="/business/cloud_service"></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="service-wrap section">
						<div class="inner_container">
							<div class="section-title-area">
								<a href="/business/our_services">
									<h2 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										OUR SERVICES
									</h2>
									<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										CJ올리브네트웍스는 우리가 가진 기술력으로<br /> 디지털 혁신을 실현합니다.
									</p>
								</a>
								<div class="btn-area aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									<a href="/business/our_services" class="common-btn is-grad-blue">
										<span>전체보기
											<i class="icon link-arrow"></i>
										</span>
									</a>
								</div>
							</div>
							<div class="service-list-wrap">
								<ul class="service-list">
									<li class="factory-one aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										<a href="/business/ai_factory_solution">
											<h3 class="tit-label">Digital Twin</h3>
<!-- 											<h4 class="tit">산업 데이터 모니터링</h4> -->
											<p class="description">
												설계에서 제조 및 건설, 운영 및 유지 관리<br /> 가상의 트윈 사용자의 문제를 미리 예방한다.
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
										</a>
									</li>
									<li class="eliss-one aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										<a href="/business/ai_logistics">
											<h3 class="tit-label">Vision AI</h3>
											<h4 class="tit">객체 인식 및 분석</h4>
											<p class="description">
												인공지는 서비스 제공<br /> 이미지 분류 및 사고예방
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
										</a>
									</li>
									<li class="nd-one-ad aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										<a href="/business/cj_one_ad">
											<h3 class="tit-label">PLM</h3>
											<h4 class="tit">Rule & Process 기반 시스템 구축</h4>
											<p class="description">
												2,800만 회원 데이터를 활용한<br /> 타겟 맞춤형 광고 큐레이션 서비스
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
										</a>
									</li>
									<li class="one-order aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										<a href="/business/smart_store_solution">
											<h3 class="tit-label">AMS</h3>
											<h4 class="tit">설비자신의 최적 관리를 통한 가치창출</h4>
											<p class="description">
												자산관리로 관리영역 확장<br /> 수익 창출의 설비
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
										</a>
									</li>
									<li class="smart-culture-space aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										<a href="/business/media_culture_spaces">
											<h3 class="tit-label">MSP</h3>
											<h4 class="tit">Cloud MSP 시스템 구축</h4>
											<p class="description">
												클라우드 인프라 이용<br /> 시스템 구축과 서비스 제공
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
										</a>
									</li>
									<li class="mplace aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
										<a href="/business/messaging_service">
											<h3 class="tit-label">SCM</h3>
											<h4 class="tit">인공지능, 머신러닝 SCM</h4>
											<p class="description">
												친환경 공급망<br /> 공급망의 투명성
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="culture-wrap section">
					<div class="inner_container">
						<div class="section-title-area">
							<a href="/culture/people">
								<h2 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									<span>PEOPLE </span>&amp; CULTURE
								</h2>
								<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									우리와 함께 새로운 미래를 만들어 갈 당신을 기다립니다.
								</p>
							</a>
							<div class="btn-area aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
								<a href="/culture/people" class="common-btn is-grad-blue">
									<span>자세히 보기<i class="icon link-arrow"></i></span>
								</a>
							</div>
						</div>
						<div class="half-wrap aos-init" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
							<div class="is-left">
								<a href="/culture/people" class="banner is-people aos-init" data-aos-offset="0" data-aos-duration="250" data-aos-delay="100" data-aos-easing="linear" data-aos="fade-up">
									<h3 class="tit">내담의 비전</h3>
									<p class="description">
										고객사의 고객만족 및 내부 경쟁력 향상
								  		<br />IT Total Service Provider로의 성장 
									</p>
									<p class="btn-arrow is-black">
										<span class="blind">자세히 보기</span>
									</p>
								</a>
							</div>
							<div class="is-right"> 
								<a href="/recruit/job_notice" class="banner is-recruit aos-init" data-aos-offset="0" data-aos-duration="250" data-aos-delay="100" data-aos-easing="linear" data-aos="fade-up">
									<h3 class="tit">채용 안내</h3>
									<p class="btn-arrow is-black">
										<span class="blind">자세히 보기</span>
									</p>
								</a> 
								<a href="/culture/growth" class="banner is-growth aos-init" data-aos-offset="0" data-aos-duration="250" data-aos-delay="100" data-aos-easing="linear" data-aos="fade-up">
									<h3 class="tit">성장</h3>
									<p class="description
									">
										차세대 신기술 개발과<br /> 혁신의 중추적 역할을 해 나갈<br /> IT 기술 전문가를 양성합니다.
									</p>
									<p class="btn-arrow is-black">
										<span class="blind">자세히 보기</span>
									</p>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="news-wrap section">
					<div class="inner_container card-ui">
						<div class="section-title-area">
							<a href="/news/recent_news">
								<h2 class="tit">공지사항</h2>
							</a>
							<div class="btn-area aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
								<a href="/news/recent_news" class="common-btn is-grad-blue">
									<span>전체보기<i class="icon link-arrow"></i></span>
								</a>
							</div>
						</div>
						<ul class="common-layout_3">
							<li data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear" class="items aos-init">
								<div class="image_box">
									<a href="/news/press_release/detail/621?ca=ALL">
										<div class="img_cover">
											<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png" />
										</div>
									</a>
								</div> 
									<a href="/news/press_release/detail/621?ca=ALL" class="desc_box">
										<p class="ui_category">언론보도</p>
										<p class="ui_title">CJ올리브네트웍스, 메타버스 커뮤니케이션 서비스 브릿지 오피스(Bridge Office)</p>
									</a>
							</li>
							<li data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear" class="items aos-init">
								<div class="image_box">
									<a href="/news/press_release/detail/620?ca=ALL">
										<div class="img_cover">
											<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png" />
										</div>
									</a>
								</div> 
									<a href="/news/press_release/detail/620?ca=ALL" class="desc_box">
										<p class="ui_category">언론보도</p>
										<p class="ui_title">CJ올리브네트웍스, 찾아가는 ‘시니어 디지털 리터러시 교육’ 펼쳐</p>
									</a>
							</li>
							<li data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear" class="items aos-init">
								<div class="image_box">
									<a href="/news/press_release/detail/619?ca=ALL">
										<div class="img_cover">
											<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png" />
										</div>
									</a>
								</div> 
									<a href="/news/press_release/detail/619?ca=ALL" class="desc_box">
										<p class="ui_category">언론보도</p>
										<p class="ui_title">CJ올리브네트웍스, 데이터 마케팅 컨퍼런스 &lt;The MAXONOMY 2023&gt; 개최</p>
									</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- // #contents -->
		</section>
		<!-- // #container -->
      <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />      
  </body>
</html>
