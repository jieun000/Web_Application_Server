package socket;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/chatServer")
public class chatServer {
	
	private static Set<Session> clients = Collections.synchronizedSet(new HashSet<>());

	// 클라이언트가 접속할 경우 실행
	@OnOpen
	public void onOpen(Session session) {
		clients.add(session);
		System.out.println("연결: " + session.getId());
	}
	
	// 접속 종료시 실행 메서드
	@OnClose
	public void onClose(Session session) {
		clients.remove(session);
		System.out.println("종료: " + session.getId());
	}
	
	// 접속 오류시 실행 메서드
	@OnError
	public void onError(Throwable e) {
		System.out.println("오류 발생");
		e.printStackTrace();
	}

	// 메세지 받았을 경우 실행
	@OnMessage
	public void onmessage(String msg, Session session) throws IOException {
		System.out.println("메세지 전송" + session.getId() + " [" + msg + "]");
		synchronized (clients) {
			for(Session client : clients) {
				if(!client.equals(session)) {
					client.getBasicRemote().sendText(msg);
				}
			}
		}
	}
	
}
