package test;

import java.util.List;

import com.bdqn.qqmusic.pojo.Artist;
import com.bdqn.qqmusic.service.ArtistService;

public class TestArtist {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ArtistService artistService=new ArtistService();
		Artist artist=new Artist();
		List<Artist> list=null;
		list=artistService.getAllArtists();
		artist=artistService.getArtistById(1);
		System.out.println(list.get(0).getAname());
	}

}
