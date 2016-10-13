package test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.bdqn.qqmusic.pojo.Song;
import com.bdqn.qqmusic.service.SongService;

public class Test_luk {
	public static void main(String[] args) {
		SongService songService=new SongService();
		List<Song> song=new ArrayList<Song>();
		song=songService.getAllSongs();
		for (int i = 0; i < song.size(); i++) {
			System.out.println(song.get(i).getSname()+"\t"+song.get(i).getArtist());
		}
	}
}
