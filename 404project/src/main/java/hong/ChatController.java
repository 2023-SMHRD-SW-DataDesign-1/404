package hong;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.AsyncContext;
import javax.servlet.http.HttpServletResponse;

public class ChatController {
	private final ChatModel model = new ChatModel();
	private final List<AsyncContext> asyncContexts = new ArrayList<>();

	public void addAsyncContext(final AsyncContext asyncContext) {
		asyncContexts.add(asyncContext);
		new Thread(new Runnable() {
			@Override
			public void run() {
				try {
					String message = model.getMessage();
					synchronized (asyncContext) {
						if (asyncContext.getResponse().isCommitted()) {
							return;
						}
						HttpServletResponse res = (HttpServletResponse) asyncContext.getResponse();
						PrintWriter writer = res.getWriter();
						res.setCharacterEncoding("UTF-8");
						writer.println("{\"user\":\"user1\",\"message\":\"" + message + "\"}");
						writer.flush();
						asyncContext.complete();
					}
				} catch (InterruptedException | IOException e) {
					e.printStackTrace();
				}
			}
		}).start();
	}

	public void addMessage(String message) {
		model.addMessage(message);
		for (AsyncContext asyncContext : asyncContexts) {
			synchronized (asyncContext) {
				if (asyncContext.getResponse().isCommitted()) {
					continue;
				}
				HttpServletResponse res = (HttpServletResponse) asyncContext.getResponse();
				res.setCharacterEncoding("UTF-8");
				PrintWriter writer;
				try {
					writer = res.getWriter();
					writer.println("{\"user\":\"user1\",\"message\":\"" + message + "\"}");
					writer.flush();
					asyncContext.complete();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		asyncContexts.clear();
	}
}
