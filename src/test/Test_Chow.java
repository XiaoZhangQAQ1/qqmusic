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
import com.bdqn.qqmusic.service.SongListManageService;

public class Test_Chow {
	public static void main(String[] args) {
		User user = new User();
		user.setUid(2);
		SongListManageService SLMS=new SongListManageService();
		
		List<SongListManageService> list=new ArrayList<SongListManageService>();
		list=SLMS.showFavList(user, 1);
		for (SongListManageService test : list) {
			System.out.println(test.getSongName()+""+test.getArtistName()+""+test.getRecordName()+""+test.getDuration());
		}
		
		
		
		
		//测试歌单dao
		/*User user = new User();
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
		}*/
	}
}
