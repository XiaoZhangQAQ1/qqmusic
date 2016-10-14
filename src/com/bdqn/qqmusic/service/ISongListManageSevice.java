package com.bdqn.qqmusic.service;

import java.util.List;

import com.bdqn.qqmusic.pojo.SongList;
import com.bdqn.qqmusic.pojo.User;

public interface ISongListManageSevice {
	//分页显示favor歌单曲目
	public List<SongListManageService> showFavList(User user,int page);
}
