package com.bit2016.guestbook.dao.test;

import java.util.List;

import com.bit2016.guestbook.dao.GuestbookDao;
import com.bit2016.guestbook.vo.GuestbookVo;

public class GuestbookTest {

	public static void main(String[] args) {
		insertDao();
//		deleteDaoTest();
		getListTest();
		
	}
	public static void insertDao(){
		GuestbookVo vo = new GuestbookVo();
		vo.setName("콜콜");
		vo.setContent("마이콜~");
		vo.setPassword("456");
		
		GuestbookDao dao = new GuestbookDao();
		dao.insert(vo);
	}
	public static void deleteDaoTest(){
		GuestbookVo vo = new GuestbookVo();
		vo.setNo(11L);
		vo.setPassword("456");
		
		GuestbookDao dao = new GuestbookDao();
		dao.delete(vo);
	}
	public static void getListTest(){
		GuestbookDao dao = new GuestbookDao();
		List<GuestbookVo> list = dao.getList();
		for ( GuestbookVo vo : list){
			System.out.println( vo );
		}
		
	}
}
