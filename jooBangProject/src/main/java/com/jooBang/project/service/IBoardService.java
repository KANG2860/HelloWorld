package com.jooBang.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.jooBang.project.model.BoardVO;


public interface IBoardService {
	public ArrayList<BoardVO>listAllBoard();
    public ArrayList<BoardVO>ctgListBoard(String ctgNo);
    public ArrayList<BoardVO>bestBoard();
	public void insertBoard(BoardVO brd);
	public BoardVO detailViewBoard(int brdNo); 
	public void viewConut(int brdNo );
	public  void updateBoard(BoardVO brd);
	public void deleteBoard(int brdNo);
	public ArrayList<BoardVO>boardSearch(HashMap<String,Object>map);
	public int count();
	public int countCtg(String ctgNo);
	public int countBest();
	public ArrayList<BoardVO>listPage(int displayPost, int postNum);
	public ArrayList<BoardVO>listPageCtg(int displayPost, int postNum,String ctgNo);
	public ArrayList<BoardVO>listPageBest(int displayPost, int postNum);
	public ArrayList<BoardVO> bRecentView();
	public ArrayList<BoardVO>myBoard(String brdWriter);
	public void comCount(int brdNo);
	public ArrayList<BoardVO> mainComAnView(); //메인 커뮤니티 공지사항
	public ArrayList<BoardVO> mainComBestView();//메인 커뮤니티 베스트 게시글

	



}
