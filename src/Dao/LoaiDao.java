package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import Bean.LoaiBean;
import Bean.SachBean;

public class LoaiDao {
	DungChung dc = new DungChung();
	public ArrayList<LoaiBean> getLoai() throws Exception {
		ArrayList<LoaiBean> ds = new ArrayList<LoaiBean>();
		dc.KetNoi();
		String sql = "select * from loai";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			 String maloai=rs.getString("maloai");
			 String tenloai = rs.getString("tenloai");
			 LoaiBean loai = new LoaiBean(maloai, tenloai);
			 ds.add(loai);
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
}
