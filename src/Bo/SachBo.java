package Bo;

import java.util.ArrayList;

import Bean.SachBean;
import Dao.SachDao;

public class SachBo {
	
	ArrayList<SachBean> ds;
	SachDao sachdao = new SachDao();
	
	public ArrayList<SachBean> getSach() throws Exception{
		ds = sachdao.getSach();
		return ds;
	}
	
	public ArrayList<SachBean> TimMaLoai(String maloai) throws Exception{
		ArrayList<SachBean> tam = new ArrayList<SachBean>();
		for( SachBean s :ds)
			if(s.getMaloai().equals(maloai)) tam.add(s);
		return tam;
	}
	
	public ArrayList<SachBean> Tim(String key) throws Exception{
		ArrayList<SachBean> tam = new ArrayList<SachBean>();
		for( SachBean s :ds)
			if(s.getTensach().toLowerCase().trim().contains(key.toLowerCase().trim()) || 
					s.getTacgia().toLowerCase().trim().contains(key.toLowerCase().trim()))
				tam.add(s);
		return tam;
	}
}
