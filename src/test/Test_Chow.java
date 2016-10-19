package test;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.bdqn.qqmusic.pojo.Song;
import com.bdqn.qqmusic.pojo.SongDAO;
import com.bdqn.qqmusic.pojo.SongList;
import com.bdqn.qqmusic.pojo.SongListDAO;
import com.bdqn.qqmusic.pojo.SongListManage;
import com.bdqn.qqmusic.pojo.SongListManageDAO;
import com.bdqn.qqmusic.pojo.User;
import com.bdqn.qqmusic.pojo.UserDAO;
import com.bdqn.qqmusic.service.SongListManageService;

public class Test_Chow {
	private static final Logger logger = Logger.getLogger(Test_Chow.class);
	public static void main(String[] args) {
		 
		PropertyConfigurator.configure("log4j.properties");
		logger.debug("Hello world.");
    	logger.info("What a beatiful day.");
		/*SongListManageDAO SLInstance =new SongListManageDAO();
		List<SongListManage> SLIlist=new ArrayList<SongListManage>();
		SLInstance.findAll();
		User user=new User();
		UserDAO userDAO=new UserDAO();
		user=userDAO.findById(2);
		SLIlist=SLInstance.findByProperty("user", user);
		for (SongListManage songListManage : SLIlist) {
			System.out.println(songListManage.getSmname());
		}*/
		
	}
}
