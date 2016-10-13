package com.bdqn.qqmusic.action;

import java.util.List;

import com.bdqn.qqmusic.pojo.Artist;
import com.bdqn.qqmusic.service.ArtistService;
import com.opensymphony.xwork2.ActionSupport;

public class SingerListAction extends ActionSupport{

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArtistService artistService=new ArtistService();
		List<Artist> list=null;
		list=artistService.getAllArtists();
		System.out.println(list.get(0).getAname());
		return "singerlist";
	}
	
//	public static void main(String[] args) {
//		SingerListAction t=new SingerListAction();
//		try {
//			t.execute();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
	
}
