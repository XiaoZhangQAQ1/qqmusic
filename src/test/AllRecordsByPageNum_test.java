package test;

import java.util.ArrayList;
import java.util.List;

import com.bdqn.qqmusic.pojo.Company;
import com.bdqn.qqmusic.pojo.Language;
import com.bdqn.qqmusic.pojo.LanguageDAO;
import com.bdqn.qqmusic.pojo.Record;
import com.bdqn.qqmusic.service.RecordService;

public class AllRecordsByPageNum_test {
	public static void main(String[] args) {
		RecordService t = new RecordService();
		//LanguageDAO languageDAO=new LanguageDAO();
		List<Record> list = new ArrayList<Record>();
		Language lan= new Language();
		Record R=new Record();
		//lan.setLid(2);
		Company Co=new Company();
		Co.setCid(1);
		
		list=t.getRecordsByCompanyPageNum(Co, 1, 5);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getRname());
		}
	}
}
