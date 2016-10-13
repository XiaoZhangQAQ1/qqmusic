# qqmusic
> notice
	
	为了避免servlet和struts2的路径撞车  
	
	servlet的路径命名逻辑改为:/object.servlet 
	
	例如AlbumServlet的路径,由原来的/album改为 
	
	/album.servlet 
	
	/album经过action类,访问效果和原来一样
	
	具体可以到
	
	web.xml,com.bdqn.qqmusic.action.AlbumAction,com.bdqn.qqmusic.servlet.AlbumServlet
	
	看 


> log

- **10OCT:** 修改了数据库中和歌单有关的表,同时加了点数据更新了qqmusic.sql,添加了struts2
- **09OCT:** 修改了src/com/bdqn/qqmusic/service/RecordService.java
- **08OCT:** 添加了record表,company表,genre表,language表,song表,type表的service层,有部分接口的方法未完全实现
- **07OCT:** 增加了SongDAO，SongService 
- **30SEP:** 完成只有专辑筛选页的demo

> link

* [git常用命令,参考连接](http://note.youdao.com/noteshare?id=111d5965973fa168dd97c1e09fdc7ec4)
* [markdown 简明语法--1分钟学会Markdown语法](http://lutaf.com/markdown-simple-usage.htm)
* [创始人 John Gruber 的 Markdown 语法说明](http://daringfireball.net/projects/markdown/syntax)
* [Markdown 中文版语法说明](http://wowubuntu.com/markdown/#list)


