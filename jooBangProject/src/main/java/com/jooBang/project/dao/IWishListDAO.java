package com.jooBang.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.jooBang.project.model.RoomVO;
import com.jooBang.project.model.WishListVO;

public interface IWishListDAO {
	public int count();
	public int wishcount(int roomNo);
	public ArrayList<RoomVO>listPage(int displayPost, int postNum);
	public String wishList_check(HashMap<String, Object> map);
	public void insert_wishList(HashMap<String, Object> map);
	public void delete_wishList(HashMap<String, Object> map);
	public ArrayList<RoomVO> hotClickView();
	public ArrayList<RoomVO> recommendView();
	public ArrayList<WishListVO> likeView(String memId);
}
