package com.bdqn.qqmusic.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bdqn.qqmusic.pojo.Artist;
import com.bdqn.qqmusic.service.ArtistService;

public class SingerListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();	
		ArtistService artist=new ArtistService();
		List<Artist> listArtist=artist.getAllArtists();		
		
		System.out.println(listArtist.get(0).getAname());
		request.getSession().setAttribute("listArtist", listArtist);
		response.sendRedirect("singerlist.jsp");
		out.flush();
		out.close();
		//testArtist.jsp
		//singerlist.jspC:\Users\Administrator\git\qqmusic\WebRoot\images\陈奕迅.png
	}
	
}
