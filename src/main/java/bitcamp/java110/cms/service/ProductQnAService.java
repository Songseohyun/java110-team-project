package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ProductQnA;

public interface ProductQnAService {
 
  List<ProductQnA> list(int pageNo, int pageSize); 
  
  // 질문 번호로 조회
  ProductQnA get(int no); 
  
  // 질문자 번호로 조회
  List<ProductQnA> listByMeno(int pageNo, int pageSize, int meno);
  
  // 공예품 번호로 조회
  List<ProductQnA> listByPtno(int pageNo, int pageSize, int ptno); 
  
  
  
  
}