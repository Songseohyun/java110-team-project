package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Timetable;

public interface TimetableDao {
  List<Timetable> findAll(Map<String,Object> params);
  List<Timetable> findByCno(int cno);

  Timetable findByCtno(int no);
  int capaUpdate(int ttno);
  
  int insert(Timetable timetable);
  int delete(int ctno);
  int update(Timetable timetable);
}
