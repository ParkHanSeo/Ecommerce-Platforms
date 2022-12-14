package com.naedam.admin.setting.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.naedam.admin.award.model.vo.Award;
import com.naedam.admin.category.model.vo.Category;
import com.naedam.admin.common.Mir9Utils;
import com.naedam.admin.history.model.vo.History;
import com.naedam.admin.map.model.service.MapService;
import com.naedam.admin.map.model.vo.MapApi;
import com.naedam.admin.map.model.vo.Maps;
import com.naedam.admin.setting.model.service.SettingService;
import com.naedam.admin.setting.model.vo.AdminMenu;
import com.naedam.admin.setting.model.vo.AdminSetting;
import com.naedam.admin.setting.model.vo.Locale;
import com.naedam.admin.setting.model.vo.SeoSetting;
import com.naedam.admin.setting.model.vo.SnsSetting;
import com.naedam.admin.setting.model.vo.Staff;
import com.naedam.admin.setting.model.vo.PGs.BillingPgSetting;
import com.naedam.admin.setting.model.vo.PGs.EximbaySetting;
import com.naedam.admin.setting.model.vo.PGs.KcpSetting;
import com.naedam.admin.setting.model.vo.PGs.KgIniSetting;
import com.naedam.admin.setting.model.vo.PGs.NaverShoppingSetting;
import com.naedam.admin.setting.model.vo.PGs.NaverpaySetting;
import com.naedam.admin.setting.model.vo.PGs.XpaySetting;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/setting")
@Slf4j
public class SettingController {
	@Autowired
	private SettingService settingService;
	@Autowired
	private MapService mapService;
	// (설정-임원관리) : 첨부파일 업로드
	@Autowired
	ServletContext application;

	/**
	 * 설정 => 쿠폰관리 검색
	 * @param request
	 * @param model
	 */
	@PostMapping("/coupon")
	@SuppressWarnings("rawtypes")
	public void coupon(HttpServletRequest request, Model model) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("mode", "2");
		Map<String, Object> resultMap = settingService.selectCouponListByParam(param, request);
		model.addAttribute("couponList", resultMap.get("couponList"));
		model.addAttribute("param",resultMap.get("param"));
	}

	/**
	 * 설정 => 약도 관리 조회
	 * @param model
	 */
	@GetMapping("/map")
	public void map(Model model) {
		List<Maps> mapList = settingService.selectMapList();
		List<MapApi> apiList = mapService.selectAllMapApiList();
		model.addAttribute("mapList", mapList);
		model.addAttribute("apiList", apiList);
		model.addAttribute("apiKey", "D914287C-19AA-31AD-B187-1532CEF93E7F");
	}

	/**
	 * 설정 => 연혁 관리 조회
	 * @param model
	 */
	@GetMapping("/history")
	public void history(Model model) {
		List<History> historyList = settingService.selectHistoryList();
		model.addAttribute("historyList", historyList);
	}

	/**
	 * 설정 => 수상 관리 조회
	 * @param model
	 */
	@GetMapping("/award")
	public void award(Model model) {
		List<Award> awardList = settingService.selectAwardList();
		model.addAttribute("awardList", awardList);
	}
	/**
	 * 설정 => 기본 설정 => 기본, 언어, 관리자 메뉴 조회
	 * @param model
	 */
	@GetMapping("/info")
	public void info(Model model) {
		List<AdminMenu> adminMenuList = settingService.selectAdminMenuList();
		AdminSetting adminSetting = settingService.selectAdminSetting();
		model.addAttribute("adminSetting", adminSetting);
		model.addAttribute("adminMenuList", adminMenuList);
	}

	@GetMapping("/img_view")
	public void img_view(String type, Model model) {
		AdminSetting adminSetting = settingService.selectAdminSetting();
		String url = null;
		if (type.equals("thumb")) {
			url = adminSetting.getThumbnailImg();
		} else if (type.equals("favicon")) {
			url = adminSetting.getFaviconImg();
		}
		model.addAttribute("url", url);
	}

	/**
	 * 설정 => SEO 설정 조회
	 * @param model
	 * @throws Exception
	 */
	@GetMapping("/seo")
	public void seo(Model model) throws Exception {
		SeoSetting seo = settingService.selectSeoSetting();
		model.addAttribute("seo", seo);
	}

	/**
	 * 설정 => SEO 설정 DML 프로세스
	 * @param request
	 * @param seo
	 * @param naverFileName
	 * @param googleFileName
	 * @param bingFileName
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/seo_process")
	public String seo_process(HttpServletRequest request, 
			@ModelAttribute SeoSetting seo,
			@RequestParam("webmaster_naver") MultipartFile naverFileName,
			@RequestParam("webmaster_google") MultipartFile googleFileName,
			@RequestParam("webmaster_bing") MultipartFile bingFileName) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("seo", seo);
		map.put("naverFileName", naverFileName);
		map.put("googleFileName", googleFileName);
		map.put("bingFileName", bingFileName);
		map.put("request", request);
		settingService.seoProcess(map);
		return "redirect:/admin/setting/seo";
	}

	/**
	 * 설정 => 결제PG 설정 네이버페이 설정
	 * @param model
	 */
	@GetMapping("/paymentpg")
	public void paymentpg(Model model) {
		BillingPgSetting pg = settingService.selectPgSetting();
		NaverShoppingSetting naverShopping = settingService.selectNaverShoppingSetting();
		model.addAttribute("pg", pg);
		model.addAttribute("naverShopping", naverShopping);
	}

	/**
	 * 설정 => 결제PG 설정 조회
	 * @param method
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/pg_process")
	@ResponseBody
	public Object pg_process(String method, HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("request", request);
		map.put("method", method);
		map.put("type", request.getParameter("type"));
		return settingService.paymentPGSelectProcess(map);
	}

	/**
	 * 설정 => 결제PG 설정 DML 프로세스
	 * @param request
	 * @param pg
	 * @param kg
	 * @param xpay
	 * @param kcp
	 * @param naverpay
	 * @param eximbay
	 * @param naverShopping
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/updatePaymentPG")
	public String updatePaymentPG(HttpServletRequest request, BillingPgSetting pg, KgIniSetting kg, XpaySetting xpay,
			KcpSetting kcp, NaverpaySetting naverpay, EximbaySetting eximbay, NaverShoppingSetting naverShopping) throws Exception {
		Map<String,Object> map = new HashMap<>();
		map.put("pg", pg);
		map.put("kg", kg);
		map.put("xpay", xpay);
		map.put("kcp", kcp);
		map.put("naverpay", naverpay);
		map.put("naverShopping", naverShopping);
		map.put("eximbay", eximbay);
		settingService.paymentPGProcess(map);
		return "admin/setting/paymentpg";
	}

	/**
	 * 설정 => SNS 연동 설정 조회
	 * @param model
	 * @param snsSetting
	 * @return
	 */
	@GetMapping("/snslogin")
	public String snsLogin(Model model, SnsSetting snsSetting) {
		snsSetting = settingService.selectSnsSetting();
		model.addAttribute("snsSetting", snsSetting);
		return "admin/setting/sns";
	}

	/**
	 * 설정 => SNS 연동 설정 업데이트
	 * @param snsSetting
	 * @return
	 */
	@PostMapping("/updateSnsSetting")
	public String updateSnsSetting(SnsSetting snsSetting) {
		settingService.updateSnsSetting(snsSetting);
		return "redirect:/admin/setting/snslogin";
	}

	/**
	 * 설정 => 임원 관리 조회
	 * @param cPage
	 * @param model
	 */
	@GetMapping("/staff.do")
	public void staffList(@RequestParam(defaultValue = "1") int cPage, Model model) {
		Map<String, Object> resultMap = settingService.selectStaffList();
		model.addAttribute("resultStaffList",resultMap.get("resultStaffList"));
		model.addAttribute("totalStaffListCount",resultMap.get("totalStaffListCount"));
	}
	
	/**
	 * 설정 => 임원 관리 DML 프로세스
	 * @param staffNo
	 * @param staff
	 * @param redirectAttribute
	 * @param request
	 * @return
	 */
	@PostMapping("/staff_process.do")
	public String staffProcess(@RequestParam(value="staffNo", required = false) int[] staffNo, Staff staff, RedirectAttributes redirectAttribute, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<>();
		map.put("staff", staff);
		map.put("mode", request.getParameter("mode"));
		map.put("staffNo", staffNo);
		Map<String, Object> resultMap = settingService.staffProcess(map);
		redirectAttribute.addFlashAttribute("msg", (String)resultMap.get("msg"));
		return "redirect:/admin/setting/staff.do";
	}

	/**
	 * 설정 => 임원 관리 검색
	 * @param type
	 * @param keyword
	 * @param request
	 * @return
	 */
	@ResponseBody
	@GetMapping("/staffTypeSearch.do")
	public Map<String, Object> staffTypeSearch(@RequestParam String type, @RequestParam String keyword, HttpServletRequest request) {
		Map<String, Object> param = new HashMap<>();
		param.put("type", type);
		param.put("keyword", keyword);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("searchStaffList", settingService.selectSearchStaffList(param));
		resultMap.put("searchStaffCount", settingService.selectsearchStaffListCount(param));
		return resultMap;
	}

	/**
	 * 설정 => 임원 관리 상세보기
	 * @param staffNo
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@ResponseBody
	@GetMapping("/staffDetail.do/{staffNo}")
	public Map<String, Object> staffDetail(@PathVariable int staffNo, Model model, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> resultMap = new HashMap<>();
		Staff staff = settingService.selectOneStaffByStaffNo(staffNo);
		resultMap.put("staff", staff);
		return resultMap;
	}

	/**
	 * 설정 => 임원 관리 팝업 이미지 조회
	 * @param staffNo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("/imgView")
	public String imgView(@RequestParam(defaultValue = "0") int staffNo, Model model) throws Exception {
		Map<String, Object> resultMap = settingService.selectOneimgUrlBystaffNo(staffNo);
		model.addAttribute("url", resultMap.get("url"));
		return "/admin/setting/imgView";
	}

	/**
	 * 설정 => 임원 관리 이미지 삭제
	 * @param staffNo
	 * @param redirectAttribute
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/deleteImg.do/{staffNo}")
	public String deleteImg(@PathVariable int staffNo, RedirectAttributes redirectAttribute, HttpServletRequest request) throws Exception {
		settingService.deleteStaffImg(staffNo);
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	/**
	 * 게시물 순서 변경
	 * @param data
	 * @param redirectAttribute
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@PostMapping("/changeOrder.do")
	public Map<String, Object> changeOrder(@RequestBody String data, RedirectAttributes redirectAttribute) {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> resultMap = new HashMap<>();
		
		try {
			Map<String, String> map = mapper.readValue(data, Map.class);
			String direction = map.get("direction");
			
			Staff paramStaff = new Staff();
			paramStaff.setStaffNo(Integer.parseInt(map.get("staffNo")));
			// ajax로 데이터를 받아온 후 radio 체크를 위해 설정
			resultMap.put("staffNo", map.get("staffNo"));
		
			// 초기 row_order
			Staff resultInputRowOrder = settingService.selectInputRowOrder(paramStaff);
			int input_row_order = resultInputRowOrder.getRowOrder();
			paramStaff.setRowOrder(input_row_order);
			
			if (direction.equals("up")) {
				// row_order 최대값 찾기
				Staff resultMaxOrder = settingService.selectMaxOrder();
				int max_order = resultMaxOrder.getRowOrder();
				
				// 선택 게시물 위로 올리기 row_order + 1
				int resultChangeOrderUp = settingService.updateChangeOrderUp(paramStaff);
				int changed_row_order = paramStaff.getRowOrder();
				
				/*
				 *  선택한 row_order + 1 값이 기존 row_order 최대값보다 작다면 다음행 row_order - 1 진행
				 *  선택된 row_order + 1 값이 최대값보다 커질 경우 해당 메소드 미작동
				 */
				log.debug("paramStaff = {}", paramStaff);
				if(max_order > input_row_order && max_order >= changed_row_order) {
					// 선택 게시물 위에 있던 게시물 내리기 row_order - 1
					int resultChangeOrderUpNext = settingService.updateChangeOrderUpNext(paramStaff);
					resultMap.put("changeOrderUpBan", "success");
				} else {
					resultMap.put("changeOrderUpBan", "ban");
				}

			} else if (direction.equals("down")) {
				// row_order 최소값 찾기
				Staff resultMinOrder = settingService.selectMinOrder();
				int min_order = resultMinOrder.getRowOrder();
				
				// 선택 게시물 아래로 내리기 row_order - 1
				int resultChangeOrderDown = settingService.updateChangeOrderDown(paramStaff);
				int changed_row_order = paramStaff.getRowOrder();
				
				if(min_order < input_row_order && changed_row_order >= min_order ) {
					// 선택 게시물 아래에 있던 게시물 올리기 row_order + 1
					int resultChangeOrderDownNext = settingService.updateChangeOrderDownNext(paramStaff);
					resultMap.put("changeOrderDownBan", "success");
				} else {
					resultMap.put("changeOrderDownBan", "ban");
				}
			}

		} catch (Exception e) {
		}

		// 임원 리스트 게시물
		Map<String, Object> map = settingService.selectStaffList();
		resultMap.put("staffList", map.get("resultStaffList"));

		return resultMap;
	}

}
