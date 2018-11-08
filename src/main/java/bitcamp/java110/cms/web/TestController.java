package bitcamp.java110.cms.web;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.MiddleTag;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductBakt;
import bitcamp.java110.cms.domain.ProductOrder;
import bitcamp.java110.cms.domain.ProductQnA;
import bitcamp.java110.cms.domain.ProductRep;
import bitcamp.java110.cms.domain.SmallTag;
import bitcamp.java110.cms.service.AuthService;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.ProductBaktService;
import bitcamp.java110.cms.service.ProductOrderService;
import bitcamp.java110.cms.service.ProductQnAService;
import bitcamp.java110.cms.service.ProductRepService;
import bitcamp.java110.cms.service.ProductService;
import bitcamp.java110.cms.service.SmallTagService;

@Controller
@RequestMapping("/test")
public class TestController {

  AuthService authService;
  BigTagService bigtagService;
  MiddleTagService middletagService;
  SmallTagService smalltagService;
  ProductService productService;
  ProductOrderService productOrderService;
  ProductRepService productRepService;
  ProductQnAService productQnAService;
  ProductBaktService productBaktService;

  public TestController(
      AuthService authService,
      BigTagService bigtagService,
      MiddleTagService middletagService, 
      SmallTagService smalltagService,
      ProductService productService,
      ProductOrderService productOrderService,
      ProductRepService productRepService,
      ProductQnAService productQnAService,
      ProductBaktService productBaktService) {
    
    this.authService = authService;
    this.bigtagService = bigtagService;
    this.middletagService = middletagService;
    this.smalltagService = smalltagService;
    this.productService = productService;
    this.productOrderService = productOrderService;
    this.productRepService = productRepService;
    this.productQnAService = productQnAService;
    this.productBaktService = productBaktService;
  }



  @GetMapping("Tag")
  public void Tag() {
    
    // 대분류 출력
    System.out.println("---------대분류---------");
    BigTag b = bigtagService.get(1);
    System.out.println("번호: " + b.getNo());
    System.out.println("이름: " + b.getName());

    // 중분류 출력
    System.out.println("---------중분류---------");
    MiddleTag m = middletagService.get(1);
    System.out.println("번호: " + m.getNo());
    System.out.println("이름: " + m.getName());
    System.out.println("중분류에서 대분류 번호찾기: " + m.getBtno());

    // 중분류 번호가 2번인 중분류의 이름, 대분류 번호
    System.out.println("--------2번중분류--------");
    List<MiddleTag> m2 = middletagService.listBtno(3, 5, 2);
    for (MiddleTag middle : m2) {

      System.out.println(middle.getNo() + "번 중분류 이름: " + middle.getName());
      System.out.println(middle.getNo() + "번 대분류 번호: " + middle.getBtno());
    }
    
    // 소분류 출력
    System.out.println("---------소분류---------");
    SmallTag s = smalltagService.get(1);
    System.out.println("번호: " + s.getNo());
    System.out.println("이름: " + s.getName());
    System.out.println("소분류에서 중분류 번호찾기: " + s.getMtno());

    // 소분류 번호가 2번인 소분류의 이름, 중분류 번호
    System.out.println("--------2번소분류--------");
    List<SmallTag> s2 = smalltagService.listMtno(3, 5, 2);
    for (SmallTag small : s2) {

      System.out.println(small.getNo() + "번 소분류 이름: " + small.getName());
      System.out.println(small.getNo() + "번 중분류 번호: " + small.getMtno());
    }
    
    // 상품(공예품) 정보 출력
    System.out.println("---------상품정보---------");
    Product prod = productService.get(1);
    System.out.println("번호: " + prod.getNo());
    System.out.println("제목: " + prod.getTitl());
    System.out.println("내용: " + prod.getConts());
    System.out.println("가격: " + prod.getPric());
    System.out.println("등록일: " + prod.getRgdt());
    System.out.println("재고: " + prod.getStock());
    System.out.println("사진: " + prod.getPhot());
    System.out.println("판매자번호: " + prod.getMeno());
    System.out.println("인증서번호: " + prod.getCtno());
    System.out.println("소분류번호: " + prod.getStno());
    
    
    // 상품 주문 내역 출력
    System.out.println("--------상품주문내역--------");
    ProductOrder prodOrder = productOrderService.get(1);
    System.out.println("주문번호: "+ prodOrder.getNo());
    System.out.println("주문자번호: "+ prodOrder.getMeno());
    System.out.println("공예품번호: "+ prodOrder.getPtno());
    System.out.println("수량: "+ prodOrder.getCnt());
    System.out.println("총금액: "+ prodOrder.getTot_pric());
    System.out.println("결제방법: "+ prodOrder.getPayopt());
    System.out.println("결제날짜: "+ prodOrder.getPaydt());
    System.out.println("택배사: "+ prodOrder.getParc_name());
    System.out.println("송장번호: "+ prodOrder.getParc_no());
    
    // 공예품 댓글 출력
    System.out.println("--------공예품댓글--------");
    ProductRep prodRep = productRepService.get(1);
    System.out.println("댓글번호: "+ prodRep.getNo());
    System.out.println("작성자번호: "+ prodRep.getMeno());
    System.out.println("공예품번호: "+ prodRep.getPtno());
    System.out.println("제목: "+ prodRep.getTitl());
    System.out.println("내용: "+ prodRep.getConts());
    System.out.println("별점: "+ prodRep.getStar());
    System.out.println("등록일: "+ prodRep.getRgdt());
    System.out.println("사진: "+ prodRep.getPhot());
    
    // 공예품 질문 답변 출력
    System.out.println("--------공예품QnA--------");
    ProductQnA prodQnA = productQnAService.get(1);
    System.out.println("질문번호: "+ prodQnA.getNo());
    System.out.println("질문자번호: "+ prodQnA.getMeno());
    System.out.println("공예품번호: "+ prodQnA.getPtno());
    System.out.println("제목: "+ prodQnA.getTitl());
    System.out.println("내용: "+ prodQnA.getConts());
    System.out.println("질문등록일: "+ prodQnA.getRgdt());
    System.out.println("답변: "+ prodQnA.getAnser());
    System.out.println("답변등록일: "+ prodQnA.getRgdt2());
    
    // 공예품 장바구니 출력
    System.out.println("--------공예품장바구니--------");
    ProductBakt prodBakt = productBaktService.get(1);
    System.out.println("장바구니번호: "+ prodBakt.getNo());
    System.out.println("공예품번호: "+ prodBakt.getPtno());
    System.out.println("멘티번호: "+ prodBakt.getMeno());
    
  }

}


