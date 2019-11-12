package Bo;

import java.util.ArrayList;

import Bean.LoaiBean;
import Bean.SachBean;
import Dao.LoaiDao;

public class LoaiBo {
	ArrayList<LoaiBean> listloai = new ArrayList<LoaiBean>();
	LoaiDao loaiDao = new LoaiDao();
	public ArrayList<LoaiBean> getLoai() throws Exception{
		listloai = loaiDao.getLoai();
		return listloai;
	} 
}
