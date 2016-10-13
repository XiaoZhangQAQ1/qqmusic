package test;

import java.util.ArrayList;
import java.util.List;

import com.bdqn.qqmusic.pojo.Record;
import com.bdqn.qqmusic.service.RecordService;

public class Playlist_test {
	public static void main(String[] args) {
		RecordService recordService=new RecordService();
		List<Record> mod_playlist=new ArrayList<Record>();
		mod_playlist=recordService.getAllRecord();
		for(int i=0;i<mod_playlist.size();i++){
			System.out.println(mod_playlist.get(i).getType().getTtype());
		}
		/*for (Record record : mod_playlist) {
			System.out.println(record.getType().getTtype()+" "+record.getRname()+" "+record.getRdate());
		}*/
	}
}
