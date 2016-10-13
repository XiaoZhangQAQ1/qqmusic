package test;

import java.util.ArrayList;
import java.util.List;

import com.bdqn.qqmusic.pojo.Song;
import com.bdqn.qqmusic.pojo.SongDAO;
import com.bdqn.qqmusic.pojo.SongList;
import com.bdqn.qqmusic.pojo.SongListDAO;
import com.bdqn.qqmusic.pojo.SongListManage;
import com.bdqn.qqmusic.pojo.SongListManageDAO;
import com.bdqn.qqmusic.pojo.User;

public class Test_Chow {
	public static void main(String[] args) {
		User user = new User();
		user.setUid(2);
		SongListManageDAO test = new SongListManageDAO();
		SongListManage FavGeDan = test.getFavList(user);
		SongListDAO sl = new SongListDAO();
		List<SongList> list = new ArrayList<SongList>();
		list = sl.getSongListByGeDan(FavGeDan, 1);
		SongDAO songDAO=new SongDAO();
		
		for (SongList songList : list) {
			Song song=songDAO.findById(songList.getSong().getSid());
			
			System.out.println(
					  song.getSname() + " "
					+ song.getArtist().getAname() + " "
					+ song.getRecord().getRname()+ " "
					+ song.getSduration());
		}
	}
}
