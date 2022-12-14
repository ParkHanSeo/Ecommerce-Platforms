package com.naedam;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.naedam.admin.board.model.service.BoardService;
import com.naedam.admin.board.model.vo.Board;
import com.naedam.admin.member.model.service.MemberService;
import com.naedam.admin.menu.model.service.MenuService;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class HomeController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private BoardService boardService;
	@Autowired	
	private MenuService menuService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String goIndex(Locale locale, Model model) {
		log.debug("HomeController ---- forward ----> index.jsp");
		// welcompage
		System.out.println("===================Index끝===============");
		return "/admin/index";
	}
	
	// dashBoard.jsp 메인
	// locale, model
	// 로그인 시 시작되는 메서드
	@RequestMapping(value = "/admin/dashBoard", method = RequestMethod.GET)
	public String goDashBoard(Locale locale, Model model) throws Exception {
//		log.debug("HomeController ---- forward ----> dashBoard");
//		// 금일 주문건, 입금건, 월별건 데이터를 map에 담음
//		Map<String, Integer> counts = new HashMap<String, Integer>();
//		counts.put("todayOrderCnt", orderService.selectTodayOrderCnt());
//		counts.put("todayPaidCnt", paymentService.selectTodayPaidCnt());
//		counts.put("todayPayReadyCnt", paymentService.selectTodayPayReadyCnt());
//		counts.put("todayRegMemberCnt", memberService.selectTodayRegMemberCnt());
//		counts.put("totalSaleAmountMonth", paymentService.selectTotalSaleAmountMonth());
//		counts.put("monthOrderCnt", orderService.selectMonthOrderCnt());
//		counts.put("totalCancelAmountMonth", paymentService.selectTotalCancelAmountMonth());
//		counts.put("monthCancelCnt", paymentService.selectMonthCancelCnt());
//		
//		// 구글차트를 위한 로직 올해를 기준으로 지난 3년간의 매출 통계 로직
//		Map<String, Object> param = new HashMap<String, Object>();
//		List<PeriodStatisticVo> periodMonthList = new ArrayList<PeriodStatisticVo>();
//		List<BeforeYearStatisticVo> byList = new ArrayList<BeforeYearStatisticVo>();
//		BeforeYearStatisticVo by = new  BeforeYearStatisticVo();
//		by.setYear(LocalDate.now().toString());
//		by.setYearsAgo(LocalDate.now().minusYears(1).toString());
//		by.setTwoYearsAgo(LocalDate.now().minusYears(2).toString());
//		Calendar cal = Calendar.getInstance();
//		int year = LocalDate.now().getYear();
//		String month = LocalDate.now().toString().substring(5,7);
//		cal.set(year,Integer.parseInt(month),1);
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("startDate", year+"-"+month+"-0"+cal.getActualMinimum(Calendar.DAY_OF_MONTH));
//		map.put("endDate", year+"-"+month+"-"+cal.getActualMaximum(Calendar.DAY_OF_MONTH));
//		map.put("by", by);
//		map.put("type", "M");
//		map.put("endDateStr", LocalDate.now().toString().substring(0, 4)+"-12-31");
//		map.put("endDateStr2", LocalDate.now().minusYears(1).toString().substring(0, 4)+"-12-31");
//		map.put("endDateStr3", LocalDate.now().minusYears(2).toString().substring(0, 4)+"-12-31");
//		
//		// 게시판, 게시글, 주문목록 등의 데이터를 위한 로직
//		Map<String, Object> resultMap = statisticsService.homeControllerStatistics(map);
//		List<Board> boardList = boardService.getBoardTitle();		
//		List<OrderDetail> orderList = orderService.selectOrderDetailList();
//		List<ProductDetail> productList = productService.selectAllProductList();
//		model.addAttribute("counts", counts);
//		model.addAttribute("boardList", boardList);
//		model.addAttribute("orderList",orderList);
//		model.addAttribute("productList",productList);
//		model.addAttribute("periodMonthList",resultMap.get("periodMonthList"));
//		model.addAttribute("orderStatusList",resultMap.get("orderStatusList"));
//		model.addAttribute("byList",resultMap.get("byList"));
//		System.out.println("===================dash끝===============");
		
		return "admin/dashBoard";
	}
	
	@Cacheable
	@RequestMapping(value = "/user/dashBoard", method = RequestMethod.GET)
	public String goDashBoard2(Locale locale, Model model) throws Exception {
//		Map<String, Object> map = new HashMap<String, Object>();
//		Map<String, Object> resultMap = menuService.getMenuCategoryList(map);
//		model.addAttribute("list", resultMap.get("list"));
//		model.addAttribute("list2", resultMap.get("list2"));
		return "admin/userDashBoard";
	}	

}
