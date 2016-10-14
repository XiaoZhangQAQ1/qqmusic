package com.bdqn.qqmusic.music;

import java.io.BufferedInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import sun.net.www.protocol.file.FileURLConnection;

import javazoom.jl.player.Player;

public class MP3Online {
	 private String filename;
	 private PlayerMusic player;
	 //private HttpURLConnection connection;// �洢����
	 private FileURLConnection connection;
	 private int downed = 0;// �ļ������ش�С,��ʼֵΪ0
	 private URL fileurl;// ��¼Ҫ�����ļ��ĵ�ַ
	 //MusicPlayThread mpt;
	 MusicPlayThread mptNotify;
	 
	 List<String> filenames = new ArrayList<String>();
	 
	 private Thread MusicPlayThread;

	 // constructor that takes the name of an MP3 file
	 public MP3Online(String filename) {
	  this.filename = filename;
	 }
	 
	 public void setFilename(String filename){
		 this.filename = filename;
	 }
	 
	 public void close() {
	  if (player != null)
	   player.close();
	 }

	 // play the MP3 file to the sound card
	 public PlayerMusic play() {
	  try {
	   fileurl = new URL(filename);
	   //connection = (HttpURLConnection) fileurl.openConnection();
	   connection = (FileURLConnection) fileurl.openConnection();
	   connection.setRequestProperty("Range", "byte=" + this.downed + "-");

	   BufferedInputStream bis = new BufferedInputStream(connection.getInputStream());
	   player = new PlayerMusic(bis);
	  } catch (Exception e) {
	   System.out.println("Problem playing file " + filename);
	   System.out.println(e);
	  }

	  return player;
	  //mpt = new MusicPlayThread("MP3", player);
	 
	 }
	 
	 public int pause(){
		 int position=0;
		 position = player.getPosition();
		 ///////////////////////////////////////////////////////////////////////////////////////
		 return position;
	 }
	 
	 public void pauseTest(){
		 try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }


	 // test client
	 public void playMusic() {
	//  String filename = "F:\\Workspaces\\glxt2\\test\\simple\\fallin-alicia keys.mp3";
	   //String filename = "http://www.venusad.cn/venus/ch/mp3/01.mp3";
	  String filename = "file:\\D:\\mmqq\\M22.mp3";                                                                 //Testing
	  System.out.println("File name : "+filename);
	  MP3Online mp3 = new MP3Online(filename);
	  System.out.println("play() : go...");                                                                          //Testing
	  MusicPlayThread mpt = new MusicPlayThread("MP3", mp3.play());
	  System.out.println("The thread playing mp3 is: " + mpt);
	  
	  try {
		  System.out.println("Main thread is going to sleep for 5 secs");                                               //Testing
		  Thread.sleep(5000);
		  System.out.println("Main thread woke up. MP3 is going to Pause...");                                               //Testing
		  //mp3.mpt.pauseTest();
		  mpt.pauseTest();
		  //mpt.pauseT();
		  //mp3.notifyAll();
		  System.out.println("MusicPlayThread woke up ___ [0v0]");                                               //Testing
		  
//		  mp3.close();
//		  Thread.sleep(2000);
//		  mp3.play();
		  
	} catch (InterruptedException e) {
		System.out.println("Main thread interrupted");
		e.printStackTrace();
	}
	  
	// when the computation is done, stop playing it
	  //mp3.close();

	  // play from the beginning
	  //mp3 = new MP3Online(filename);
	  //mp3.play();

	 }
	 
	 public static void main(String[] args){
		 MP3Online mp1 = new MP3Online("file:\\D:\\mmqq\\M22.mp3");
		 Thread t = Thread.currentThread();
		 System.out.println("The main thread is: " + t);
		 mp1.playMusic();
		 try {
			System.out.println("MAIN THREAD sleeps for 20s");
			Thread.sleep(20000);
			System.out.println("RESTART MP3 5s LATER");
			Thread.sleep(5000);
			t.notify();
		} catch (InterruptedException e) {
			
			e.printStackTrace();
		}
	 }

	}


class MusicPlayThread implements Runnable{
	private int state=1;
	private PlayerMusic player;
	Thread t;
	
	MusicPlayThread(String name, PlayerMusic player){
		this.player = player;
		t = new Thread(this, name);
		System.out.println("New MusicPlayThread: " + t);
		t.start();
//		try {
//			System.out.println("MPT is going to sleep after start() +++++++++++++++++++++++++++++");
//			Thread.sleep(5000);
//		
////			System.out.println("Woke up from sleep _ start() +++++++++++++++++++++++++++++++++++");
////			pauseTest();
////			System.out.println("Slept again ....... This time audio is sleeping...  ZZZ");
//			//t.wait();
//		} catch (InterruptedException e) {
//			e.printStackTrace();
//		}
	}
	
	public void pauseTest(){
		//player.wait();
		synchronized(player){
			System.out.println("PauseTest() here");
			player.pauseTest();
			System.out.println("Waiting......");
		}
	}
	
	public void pauseT(){
		synchronized(player){
			try {
				wait();
			} catch (InterruptedException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	public void wakeUpTest(){
		player.wakeUpTest();
	}
	
	public void run(){
		try{
			System.out.println("MusicPlayThread run()...  ___  [^o^]");                                               //Testing
			player.play();
		  }catch(Exception e){
			  System.out.println("Exception is :   "+e);
			  e.printStackTrace();
		  }
//		  try {
//			  while(!player.isComplete()){
//				System.out.println("The value of state before try catch: " + state);
//			  	while(state==0){
//				  	System.out.println("Music Play thread_t is going to sleep  (>_<)");
//				  	Thread.sleep(3000);
//				  	System.out.println("t Woke up  (0_0)");
//				  	state=1;
//				  	System.out.println("State changed back to running state: " + state);
//			  	}
//			  	System.out.println("The value of state after try catch: " + state);
//			  	System.out.println("The complete level of MP3: " + player.isComplete());
//			  	Thread.sleep(2000);
//			  }
//		} catch (InterruptedException e) {
//			e.printStackTrace();
//		}
		
	}
	
	 public void nextSong(){
		 
	 }
	 
	 public void lastSong(){
		 
	 }
	
}