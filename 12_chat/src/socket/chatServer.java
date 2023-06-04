package socket;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

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
	
}
