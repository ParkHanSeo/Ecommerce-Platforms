<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
    

    <div id="wrap" class="visual-center">

<div id="search-layer">
    <div class="inner">
        <div class="area_search">
            <form autocomplete="off" action="/searchall/search_results" method="post">
                 <input type="search" id="inputSearch" name="searchAll" placeholder="무엇이 궁금하신가요?" maxlength="30"> 
                 <label for="inputSearch" class="blind">검색어</label>
                 <span class="icon_search">
                    <img src="/images/common/03-foundation-icon-system-search-32-px.svg" alt="">
                    <input type="submit" id="btnCommonSearchAll" value="검색"> 
               	</span>
            </form>
            
            <p class="result-error-txt" style="display:none;">검색어를 입력해주세요.</p>

					<div class="hash_area search_tag">
						<a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','AI')"
							class="hash_tag">#AI</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','블록체인')"
							class="hash_tag">#블록체인</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','NFT')"
							class="hash_tag">#NFT</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','빅데이터')"
							class="hash_tag">#빅데이터</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','클라우드')"
							class="hash_tag">#클라우드</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','CJONE')"
							class="hash_tag">#CJONE</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','데이터마케팅')"
							class="hash_tag">#데이터마케팅</a>
					</div>
				</div>
        <a href="" class="btn_close_search">
            <span class="blind">검색창 닫기</span>
            <i class="close-ico">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </i>
        </a>
    </div>
</div>
<script>
$(function(){
	// 검색어 유효성 체크
	$("#btnCommonSearchAll").click(function(){
		if($("#inputSearch").val() == "") {
			$(".result-error-txt").show();
			return false;	
		}
	});
});

</script>


        <section id="container">
            <div id="contents" class="contents_top">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">사업 소개</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="layout_section_outer sub-main type03 service_sub_main">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1 service_txt1">
                                IT분야에서의 구축 경험을 토대로 고객사를 위한 <br />
                                다양한 솔루션과 서비스를 제공합니다.
                            </p>
                        </div>
                    </div>
                    <div class="common-swiper_area sub-main">
                        <div class="inner_container">
                            <div class="common-swiper_tab swiper-container-initialized swiper-container-horizontal">
                                <ul class="swiper-wrapper service_swiper_wrapper">
                                    <li class="swiper-slide swiper-slide-active service_swiper_slide"><a href="#self">SOLUTION</a></li>
                                    <li class="swiper-slide swiper-slide-next service_swiper_slide"><a href="#self">CONSULTING</a></li>
                                    <li class="swiper-slide service_swiper_slide"><a href="#self">S I</a></li>
                                </ul>
                            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                        </div>
                    </div><!-- // .common-swiper_area -->
                </div><!-- // .layout_section_outer -->

                <div class="layout_section_outer sub-main type08 service_top_layout" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                SOLUTION
                            </p>
                        </div>

                        <div class="layout_body">
                            <div class="icon_item_box">
                                <ul class="common-layout_3 is-vertical introduction_vertical">
                                    <li class="items">
                                        <a href="/user/introduction/digitalTwin" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                Digital Twin
                                            </p>
                                            <p class="icon_item_desc">
                                                제조 현장 최적 운영을 위한 <br>
                                                AI 팩토리 Total 서비스
                                            </p>
                                            <i class="icon service2-01"></i>
                                        </a>
                                    </li>
                                    <li class="items">
                                        <a href="/user/introduction/visionAi" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                Vision AI
                                            </p>
                                            <p class="icon_item_desc">
                                                스마트 물류센터 구축의 모든 것
                                            </p>
                                            <i class="icon service2-02"></i>
                                        </a>
                                    </li>
                                    <li class="items">
                                        <a href="/user/introduction/cloudMsp" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                Cloud MSP
                                            </p>
                                            <p class="icon_item_desc">
                                                스마트 물류센터 구축의 모든 것
                                            </p>
                                            <i class="icon service2-02"></i>
                                        </a>
                                    </li>                         
                                    <li class="items">
                                        <a href="/user/introduction/scm" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                SCM
                                            </p>
                                            <p class="icon_item_desc">
                                                스마트 물류센터 구축의 모든 것
                                            </p>
                                            <i class="icon service2-02"></i>
                                        </a>
                                    </li>   
                                    <li class="items">
                                        <a href="/user/introduction/innoPlm" class="icon_item_inner">
                                            <p class="icon_item_title">
                                               Inno PLM
                                            </p>
                                            <p class="icon_item_desc">
                                                스마트 물류센터 구축의 모든 것
                                            </p>
                                            <i class="icon service2-02"></i>
                                        </a>
                                    </li>   
                                    <li class="items">
                                        <a href="/user/introduction/innoAms" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                Inno AMS
                                            </p>
                                            <p class="icon_item_desc">
                                                스마트 물류센터 구축의 모든 것
                                            </p>
                                            <i class="icon service2-02"></i>
                                        </a>
                                    </li>
                                    <li class="items">
                                        <a href="/user/introduction/mes" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                MES
                                            </p>
                                            <p class="icon_item_desc">
                                                스마트 물류센터 구축의 모든 것
                                            </p>
                                            <i class="icon service2-02"></i>
                                        </a>
                                    </li>   
                                    <li class="items">
                                        <a href="/user/introduction/solutionDevelopment" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                Solution <br />
                                                Development
                                            </p>
                                            <p class="icon_item_desc">
                                                스마트 물류센터 구축의 모든 것
                                            </p>
                                            <i class="icon service2-02"></i>
                                        </a>
                                    </li>                                     
                                </ul>
                            </div>
                        </div>
                    </div>
                </div><!-- // .layout_section_outer -->

                <div class="layout_section_outer sub-main type08" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                CONSULTING
                            </p>
                        </div>

                        <div class="layout_body">
                            <div class="icon_item_box">
                                <ul class="common-layout_3 is-vertical introduction_vertical">
                                    <li class="items">
                                        <a href="/business/media_culture_spaces" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                CONSULTING
                                            </p>
                                            <p class="icon_item_desc">
                                                최신 디지털 경험을 선사하는 <br>
                                                문화 공간 디자인
                                            </p>
                                            <i class="icon service2-03"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div><!-- // .layout_section_outer -->

                <div class="layout_section_outer sub-main type08" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                S I
                            </p>
                        </div>

                        <div class="layout_body">
                            <div class="icon_item_box">
                                <ul class="common-layout_3 is-vertical introduction_vertical">
                                    <li class="items">
                                        <a href="/user/introduction/si" class="icon_item_inner">
                                            <p class="icon_item_title">
                                                System Integration
                                            </p>
                                            <p class="icon_item_desc">
                                                광고주별 타겟 맞춤형 큐레이션 서비스
                                            </p>
                                            <i class="icon service2-09"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div><!-- // .layout_section_outer -->

            </div><!-- // #contents -->
        </section><!-- // #container -->
    </div><!-- // #wrap -->

<div>

<div class="layer_wrapper" id="pop_customer">
    <div class="layer_outer">
        <div class="layer_inner">
            <div class="layer_head">
                <p class="layer_title">문의하기</p>
            </div>
            <div class="layer_body">
                <div class="form_fieldset">
                    <div class="form_head">
                        <label for="form01" class="form-label">문의 유형</label>
                    </div>
                    <div class="form_body">
                        <div class="common-select_box">
                            <select name="" id="category" onchange="categoryType(this.value)">
                                <option value="">문의 유형을 선택해 주세요.</option>
                                <option value="서비스/기술문의">서비스/기술문의</option>
                                <option value="제휴제안">제휴제안</option>
                                <option value="기타문의">기타문의</option>
                            </select>
                            <p class="messg categorymsg" style="display:none;">문의 유형을 선택해 주세요.</p>
                        </div>
                    </div>
                </div>

                <div class="form_fieldset">
                    <div class="form_head">
                        <label for="form02" class="form-label">사업 구분</label>
                    </div>
                    <div class="form_body form-layout_2 full1">
                        <div class="items">
                            <div class="common-select_box">
                                <select name="business" id="business" onchange="businessType(this.value)">
                                    <option value="">서비스 또는 기술을 선택해 주세요.</option>
                                    <option value="1">스마트 제조·물류</option>
                                    <option value="2">미디어 컨버전스</option>
                                    <option value="3">디지털 마케팅</option>
                                    <option value="4">이커머스&amp;리테일</option>
                                    <option value="5">스마트 비즈니스</option>
                                    <option value="6">클라우드&amp;인프라</option>
                                    <option value="7">정보 보호</option>
                                    <option value="8">기술 연구</option>
                                    <option value="9">AI 비전 연구</option>
                                    <option value="10">AI 자연어 연구</option>
                                    <option value="11">AI 오디오 연구</option>
                                    <option value="12">데이터 사이언스</option>
                                    <option value="13">블록체인</option>
                                    
                                </select>
                                <p class="messg businessmsg" style="display:none;">서비스 또는 기술을 선택해 주세요. </p>
                            </div>
                        </div>
                        <div class="items">
                            <div class="common-select_box">
                                <select name="businessDetail" id="businessDetail" onchange="businessDType(this.value)" disabled="">
                                    <option value="">상세항목을 선택해 주세요.</option>
                                    <option value="1">AI팩토리 (FactoryOne)</option>
									<option value="2">AI로지스틱스</option>
									<option value="3">스마트 컬처 스페이스</option>
									<option value="4">NFT</option>
									<option value="5">방송 송출 서비스</option>
									<option value="6">인코딩 하우스</option>
									<option value="7">공간 음악 서비스</option>
									<option value="8">방송•미디어 통합 인프라 솔루션</option>
									<option value="9">CJ ONE AD</option>
									<option value="10">CJ기프트카드</option>
									<option value="11">데이터 마케팅 솔루션 (Amplitude &amp; Braze)</option>
									<option value="12">데이터 바우처</option>
									<option value="13">빅데이터 통합 마케팅</option>
									<option value="14">통합 커뮤니케이션 솔루션 (mplace)</option>
									<option value="15">매장 통합관리 솔루션 (OneOrder)</option>
									<option value="16">티켓 통합 솔루션 (OneOrder Ticket)</option>
									<option value="17">결제 솔루션 (One PG)</option>
									<option value="18">시스템 통합</option>
									<option value="19">시스템 운영</option>
									<option value="20">웹앱 서비스</option>
									<option value="21">스마트 인사관리 플랫폼 (WORKSCAN)</option>
									<option value="22">이러닝 서비스</option>
									<option value="23">AI 통합 인프라 솔루션</option>
									<option value="24">IT 인프라 서비스</option>
									<option value="25">Hybrid/Multi 클라우드 서비스</option>
									<option value="26">퍼블릭 클라우드 보안</option>
									<option value="27">보안 취약점 진단 &amp; 모의해킹</option>
									<option value="28">산업제어시스템(OT/ICS) 보안</option>
                                </select>
                                <p class="messg businessDetailmsg" style="display:none;">상세항목을 선택해 주세요. </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form_fieldset form-layout_2 full2">
                    <div class="items">
                        <div class="form_head">
                            <label for="form03" class="form-label">이름</label>
                        </div>
                        <div class="form_body">
                            <div class="textfd_wrap">
                                <input type="text" placeholder="이름을 입력해주세요." id="name" maxlength="30">
                                <p class="messg namemsg" style="display:none;">이름을 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="items">
                        <div class="form_head">
                            <label for="form04" class="form-label">이메일</label>
                        </div>
                        <div class="form_body">
                            <div class="textfd_wrap">
                                <input type="email" placeholder="이메일을 입력해 주세요." id="email" maxlength="30">
                                <p class="messg emailmsg1" style="display:none;">이메일을 입력해 주세요.</p>
                                <p class="messg emailmsg2" style="display:none;">이메일 형식이 올바르지 않습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form_fieldset form-layout_2 full2">
                    <div class="items">
                        <div class="form_head">
                            <label for="form05" class="form-label">연락처</label>
                        </div>
                        <div class="form_body">
                            <div class="textfd_wrap">
                                <input type="tel" placeholder="연락처를 입력해 주세요." id="phone" maxlength="20" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                                <p class="messg phonemsg" style="display:none;">연락처를 입력해 주세요. </p>
                            </div>
                        </div>
                    </div>
                    <div class="items">
                        <div class="form_head">
                            <label for="form06" class="form-label">회사(소속)</label>
                        </div>
                        <div class="form_body">
                            <div class="textfd_wrap">
                                <input type="text" placeholder="회사명 또는 소속기관을 입력해 주세요." id="company" maxlength="30">
                                <p class="messg companymsg" style="display:none;">회사명 또는 소속기관을 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form_fieldset">
                    <div class="form_head">
                        <label for="form07" class="form-label">문의 제목</label>
                    </div>
                    <div class="form_body">
                        <div class="textfd_wrap">
                            <input type="text" placeholder="제목을 입력해 주세요." id="title" maxlength="200">
                            <p class="messg titlemsg" style="display:none;">제목을 입력해 주세요.</p>
                        </div>
                    </div>
                </div>

                <div class="form_fieldset">
                    <div class="form_head">
                        <label for="form08" class="form-label">문의 내용</label>
                    </div>
                    <div class="form_body">
                        <div class="textarea_wrap">
                            <textarea id="content" placeholder="문의 내용을 입력해 주세요." maxlength="2000"></textarea>
                            <p class="messg contentmsg" style="display:none;">문의 내용을 입력해 주세요. </p>
                        </div>
                    </div>
                </div>

                <div class="form_fieldset">
                    <div class="form_head">
                        <label for="form08" class="form-label">첨부 파일(선택)</label>
                    </div>
                    <div class="form_body">
                        <div class="common-file-upload type01">
                            <input type="file" id="file" name="file" class="iText" title="첨부파일">
                            <label for="file" class="common-btn is-gray"><span>파일선택</span></label>
                            <div class="file_viewer-box">
                                <p class="file_viewer-txt">첨부된 파일이 없습니다.</p>
                                <button type="button" class="icon val-del"><span class="hidden">첨부파일 삭제</span></button>
                            </div>
                        </div>
                        <p class="guide-txt">* 첨부파일은 최대 10MB까지 등록 가능하며, 파일 형식은 zip, pdf, hwp, ppt, pptx, doc, docx, xls, xlsx, jpg, jpeg, png, gif 만 가능합니다.</p>
                    </div>
                </div>

                <div class="form_fieldset">
                    <div class="provision_area" id="agreeChk">
                        <div class="scroll-wrapper provision_box" style="position: relative;"><div class="provision_box scroll-content scroll-scrollx_visible scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px;">
                            개인정보 수집 및 이용 동의 (필수)
                            <br><br>
                            1. 처리목적 : 고객 문의에 대한 답변 및 현황 관리<br>
                            2. 처리항목 : 이름, 연락처, 이메일, 회사(소속)<br>
                            3. 보유기간 : 개인정보 수집 및 이용에 관한 동의 후 36개월간 보유
                            <br><br>
                            귀하는 개인정보 수집·이용에 동의하지 않으실 수 있습니다.<br>
                            그러나 동의하지 않을 경우 고객문의 등록이 불가합니다.
                            <br><br>
                            ※ CJ올리브네트웍스는 이용자가 만 14세 미만일 경우 개인정보를 수집하지 않습니다.
                        </div><div class="scroll-element scroll-x scroll-scrollx_visible scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="left: 0px;"></div></div></div><div class="scroll-element scroll-y scroll-scrollx_visible scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="top: 0px;"></div></div></div></div>

                        <p class="messg agreemsg" style="display:none;">개인정보 수집 및 이용에 동의해 주세요.</p>
                    </div>
                </div>

                <div class="input_wrapper">
                    <input type="checkbox" id="formChkGlobal">
                    <label for="formChkGlobal">개인정보 수집 및 이용에 동의합니다. </label>
                </div>

                <div class="btn_area center">
                    <a href="#self" class="common-btn" id="sendBtn_pop"><span>등록하기</span></a>
                </div>
            </div>
            <button type="button" class="icon pop-close" onclick="modalPop.close(this);">닫기</button>
        </div><!-- // .layer_inner -->
    </div><!-- // .layer_outer -->
</div><!-- // .layer_wrapper -->
<script>

</script>

</div>

    <div class="layer_wrapper is-movie" id="pop_movie">
    <div class="layer_outer">
        <div class="layer_inner">
            <div class="layer_body">
                <div class="movie_iframe_wrap">
                    <iframe src="" title="" class="movie_iframe"></iframe>
                </div>
            </div>
            <button type="button" class="icon pop-close" onclick="moviePopClose(this);">닫기</button>
        </div><!-- // .layer_inner -->
    </div><!-- // .layer_outer -->
</div><!-- // .layer_wrapper -->




<div style="left: -1000px; overflow: scroll; position: absolute; top: -1000px; border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"><div style="border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"></div></div></body>
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />	
  </body>
</html>
