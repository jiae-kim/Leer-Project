package com.leer.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.mypage.model.service.MypageService;
import com.leer.mypage.model.vo.Cart;
import com.leer.order.model.service.OrderService;
import com.leer.order.model.vo.OrProduct;
import com.leer.order.model.vo.Order;

/**
 * Servlet implementation class OrderCompleteController
 */
@WebServlet("/complete.od")
public class OrderCompleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCompleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		int cartSize = Integer.parseInt(request.getParameter("cartSize"));
		
		
		String[] cartNos = request.getParameterValues("cartNo");
		
		
		String tkName = request.getParameter("tkName");
		
		String[] tkPhones = request.getParameterValues("tkPhone");
		String tkPhone = "";
		for(int i=0; i<tkPhones.length; i++) {
			tkPhone += tkPhones[i];
		}
		String postCode = request.getParameter("postCode");
		String[] address = request.getParameterValues("address");
		String sAddress = "";
		for(int i=0; i<address.length; i++) {
			sAddress += " " + address[i];
		}
		
		int finalPrice = Integer.parseInt(request.getParameter("finalPrice"));
		
		/* 주문테이블에 insert*/
		Order o = new Order();
		o.setMemNo(memNo);
		o.setOrPrice(finalPrice);
		o.setOrPoint(finalPrice * 0.1);
		o.setOrYn("Y");
		o.setTakeName(tkName);
		o.setLocation(sAddress);
		o.setParcelStatus(1);
		o.setPayment("Y");
		o.setPhone(tkPhone);
		
		int result1 = new OrderService().insertOrder(o);
		
		
		/* 주문별 상품테이블에 insert*/
		
		
		// 1. 카트 넘버가 *인 상품 코드, 사이클, 양 가져오기 
		ArrayList<Cart> list = new ArrayList<>(); // 결제한 카트 리스트 생성 
		
		for(int i=0; i<cartNos.length; i++) { // orderForm.jsp에서 뿌려진 카트번호 길이만큼 
			list.add(new OrderService().selectOrderList(cartNos[i])); // 카트번호를 매개변수로 상품정보 조회해 와서 리스트에 넣음 
		}
		
		// 1.1 현재의 주문번호 조회
		String OrNo = new OrderService().selectOrNo();
		
		// 2. 주문별상품 객체에 조회해온 카트객체값 넣어주기 
		ArrayList<OrProduct> pList = new ArrayList<>();
		
		for(int i=0; i<list.size(); i++) {
			pList.add(i, new OrProduct(OrNo, list.get(i).getpCode(),
										list.get(i).getOrCycle(), list.get(i).getAmount()
					                   ));
			
		}
		// 3. insert 
		int result2 = 0;
		for(int i=0; i<pList.size(); i++) {
			result2 += new OrderService().insertOrProduct(pList.get(i));
		}
		
		
		
		
		
		int result3 =  0;
		/* insert성공하면 장바구니 테이블에 delete*/
		for(int i=0; i<cartNos.length; i++) {
			result3 += new MypageService().deleteCart(cartNos[i]);
		}
		
		
		
		
		/* 입출고 테이블에 출고처리*/
		int result4 = 0;
		for(int i=0; i<cartNos.length; i++) {
			result4 += new OrderService().insertOutStock(list.get(i)); // 매개변수로 카트객체 하나씩 넘김 
		}
		
		
		/* 멤버테이블에 포인트 값도 바꿔주기*/
		int result5 = new OrderService().updatePoint(memNo, finalPrice);
		
		request.setAttribute("OrNo", OrNo);
		request.setAttribute("order", o);
		request.setAttribute("pList", pList);
		
		request.getRequestDispatcher("/views/order/orderComplete.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
