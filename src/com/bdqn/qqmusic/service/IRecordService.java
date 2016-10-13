package com.bdqn.qqmusic.service;

import java.util.List;


import com.bdqn.qqmusic.factory.DAOFactory;
import com.bdqn.qqmusic.pojo.Company;
import com.bdqn.qqmusic.pojo.Genre;
import com.bdqn.qqmusic.pojo.Language;
import com.bdqn.qqmusic.pojo.Record;
import com.bdqn.qqmusic.pojo.Type;

public interface IRecordService {
	//根据id得到专辑
	public Record getRecordById(int id);
	public List<Record> getAllRecord();
	//pageNum 当前所在页;  line 一页有多少行Records
	public List<Record> getAllRecordsByPageNum(int pageNum, int line);
	
	public List<Record> getRecordsByGenre(Genre genre);
	
	public List<Record> getRecordsByGenrePageNum(Genre genre, int pageNum, int line);
	
	public List<Record> getRecordsByCompany(Company company);
	
	public List<Record> getRecordsByCompanyPageNum(Company company, int pageNum, int line);
	
	public List<Record> getRecordsByLanguage(Language language);
	
	public List<Record> getRecotdsByLanguagePageNum(Language language, int pageNum, int line);
	
	public Record getRecordByName(String name);
	
	public List<Record> getRecordsByType(Type type);
	
	public List<Record> getRecordByTypePageNum(Type type, int pageNum, int line);
	
	public void saveOrUpdateRecord(Record record);
	
	public void deleteRecord(Record record);
	

}
