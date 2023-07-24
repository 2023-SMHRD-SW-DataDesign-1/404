package hong;

import java.util.ArrayList;
import java.util.List;

public class ChatModel {
    private final List<String> messages = new ArrayList<>();

    public synchronized void addMessage(String message) {
        messages.add(message);
        notifyAll();
    }

    public synchronized String getMessage() throws InterruptedException {
        while (messages.isEmpty()) {
            wait();
        }
        return messages.remove(0);
    }
}
