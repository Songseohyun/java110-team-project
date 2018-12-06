package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassQna;

public interface ClassQnaService {
  int qnaadd(ClassQna classqna);
  int qnadelete(int no);
  int qnaupdate(ClassQna classqna);
  int ansupdate(ClassQna classqna);
  
  List<ClassQna> classqnalist(int pageNo,int pageSize,int no);
  List<ClassQna> classqnalist2(int pageNo,int pageSize,int no);
  List<ClassQna> listbycno(int no , int pageNo,int pageSize );
  int countbycno(int no);
  
  ClassQna get(int no);
}
