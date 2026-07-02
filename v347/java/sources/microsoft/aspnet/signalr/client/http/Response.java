package microsoft.aspnet.signalr.client.http;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface Response {
    List<String> getHeader(String str);

    Map<String, List<String>> getHeaders();

    int getStatus();

    byte[] readAllBytes() throws IOException;

    String readLine() throws IOException;

    String readToEnd() throws IOException;
}
