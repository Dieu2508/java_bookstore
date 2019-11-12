package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import Bean.SachBean;

public class SachDao {
	DungChung dc = new DungChung();
	public ArrayList<SachBean> getSach() throws Exception {
		ArrayList<SachBean> ds = new ArrayList<SachBean>();
		dc.KetNoi();
		String sql = "select * from sach";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			 String masach=rs.getString("masach");
			 String tensach = rs.getString("tensach");
			 String tacgia = rs.getString("tacgia");
			 long gia = rs.getLong("gia");
			 String anh = rs.getString("anh");
			 Date ngaynhap = rs.getDate("ngaynhap");
			 String maloai = rs.getString("maloai");
			 SachBean s = new SachBean(masach, tensach, tacgia, gia, anh, ngaynhap, maloai);
			 ds.add(s);
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
}
