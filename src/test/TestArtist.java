package test;

import java.util.List;

import com.bdqn.qqmusic.pojo.Artist;
import com.bdqn.qqmusic.pojo.Nation;
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
		//list=artistService.getAllArtists();
		//artist=artistService.getArtistById(1);
		Nation nation=new Nation();
		nation.setNid(2);
		nation.setNid(4);
		nation.setNid(3);
		list=artistService.getArtistsByNationPageUnm(nation, 3, 20);
		System.out.println(list.get(0).getAname());
	}

}
