package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassOrder;

public interface ClassOrderService {

  List<ClassOrder> corderlist(int pageNo, int pageSize, int meno);

  void orderadd(ClassOrder classorder);

  List<ClassOrder> listByMaster(int pageNo, int pageSize); // 관리자- 클래스 조회
}
