package test;

import com.bdqn.qqmusic.pojo.Nation;
import com.bdqn.qqmusic.service.NationService;

public class TestNation {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		NationService nationService=new NationService();
		Nation nation=new Nation();
		nation=nationService.findById(1);
		System.out.println(nation.getNid());
	}

}
