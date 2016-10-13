package com.bdqn.qqmusic.service;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.bdqn.qqmusic.pojo.SongDAO;
import com.bdqn.qqmusic.pojo.SongList;
import com.bdqn.qqmusic.pojo.SongListDAO;
import com.bdqn.qqmusic.pojo.SongListManage;
import com.bdqn.qqmusic.pojo.SongListManageDAO;
import com.bdqn.qqmusic.pojo.User;

public class SongListManageService implements ISongListManageSevice {
	
	//域
	private String songName;
	private String artistName;
	private String recordName;
	private Time duration;
	
	//展示favor歌单曲目列表
	
	@Override
	public List<SongListManageService> showFavList(User user, int page) {
		// TODO Auto-generated method stub
		//new歌单管理dao
		SongListManageDAO getfavList = new SongListManageDAO();
		//调用获取favor歌单方法
		SongListManage FavGeDan = getfavList.getFavList(user);
		//new歌单dao
		SongListDAO songListDAO = new SongListDAO();
		//new歌曲dao
		SongDAO songDAO=new SongDAO();
		//原始歌单
		List<SongList> raw = new ArrayList<SongList>();
		//获取分页歌单
		raw = songListDAO.getSongListByGeDan(FavGeDan, page);
		//new 结果集合
		List<SongListManageService> result=new ArrayList<SongListManageService>();
		//装入service层
		for (int i=1;i<raw.size();i++) {
			//遍历元素
			SongList songList=raw.get(i);
			//服务层实例
			SongListManageService instance=new SongListManageService();
			instance.setSongName(songList.getSong().getSname());
			instance.setArtistName(songList.getSong().getArtist().getAname());
			instance.setRecordName(songList.getSong().getRecord().getRname());
			instance.setDuration(songList.getSong().getSduration());
			result.add(i, instance);
		}
		return result;
	}
	
	
	
	
	//封装
	public String getSongName() {
		return songName;
	}


	public void setSongName(String songName) {
		this.songName = songName;
	}


	public String getArtistName() {
		return artistName;
	}


	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}


	public String getRecordName() {
		return recordName;
	}


	public void setRecordName(String recordName) {
		this.recordName = recordName;
	}


	public Time getDuration() {
		return duration;
	}


	public void setDuration(Time duration) {
		this.duration = duration;
	}


	
	
	//构造器
		//无参
	public SongListManageService() {}
		//有参
	public SongListManageService(String songName, String artistName,
			String recordName, Time duration) {
		super();
		this.songName = songName;
		this.artistName = artistName;
		this.recordName = recordName;
		this.duration = duration;
	}


	

}
