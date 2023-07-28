package com.smhrd.controller;



import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.smhrd.model.ChatDAO1;
import com.smhrd.model.ChatDTO1;




@ServerEndpoint("/WebLiveChatingCon")
public class WebLiveChatingCon extends HttpServlet {
private static Map<Session,ChatDTO1> users = Collections.synchronizedMap(new HashMap<Session,ChatDTO1>());
	
	
	
	@OnMessage
	public void onMsg(String message, Session session) throws IOException{
		String userName = users.get(session).getNickname();
		System.out.println(userName + " : " + message);
		
		synchronized (users) {
			Iterator<Session> it = users.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				if(!currentSession.equals(session)){
					currentSession.getBasicRemote().sendText(userName + " : " + message);
				}
			}
		}
		
	}
	
	@OnOpen
	public void onOpen(Session session){
		ChatDTO1 cdto = new ChatDTO1();
		String userName =cdto.getNickname() ;
		
				
		System.out.println(session);
		cdto.setNickname(userName);
		
		System.out.println(session + " connect");
		
		users.put(session, cdto);
		sendNotice(cdto.getNickname() + "님이 입장하셨습니다. 현재 사용자 " + users.size() + "명");
	}
	
	
	public void sendNotice(String message){
		ChatDTO1 cdto = new ChatDTO1();
		String userName = cdto.getOtherMemberNickname();
		System.out.println(userName + " : " + message);
		
		synchronized (users) {
			Iterator<Session> it = users.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				try {
					currentSession.getBasicRemote().sendText(userName + " : " + message);
					ChatDTO1 chdto = new ChatDTO1();
					ChatDAO1 cdao = new ChatDAO1();
					
							
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	@OnClose
	public void onClose(Session session) {
		String userName = users.get(session).getOtherMemberNickname();
		users.remove(session);
		sendNotice(userName + "님이 퇴장하셨습니다. 현재 사용자 " + users.size() + "명");
	}

}

