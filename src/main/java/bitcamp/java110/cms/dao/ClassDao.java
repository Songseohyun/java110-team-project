package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Classes;

public interface ClassDao {
  List<Classes> findAll(Map<String, Object> params);
  int classinsert(Classes classes);
}