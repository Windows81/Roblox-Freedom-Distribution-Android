package microsoft.aspnet.signalr.client;

import com.google.gson.e;
import com.google.gson.k;
import com.google.gson.p;
import java.util.Map;
import microsoft.aspnet.signalr.client.http.Request;
import microsoft.aspnet.signalr.client.transport.ClientTransport;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface ConnectionBase {
    void closed(Runnable runnable);

    void connected(Runnable runnable);

    void connectionSlow(Runnable runnable);

    void disconnect();

    void error(ErrorCallback errorCallback);

    String getConnectionData();

    String getConnectionId();

    String getConnectionToken();

    Credentials getCredentials();

    String getGroupsToken();

    e getGson();

    Map<String, String> getHeaders();

    p getJsonParser();

    Logger getLogger();

    String getMessageId();

    String getQueryString();

    ConnectionState getState();

    String getUrl();

    void onError(Throwable th, boolean z);

    void onReceived(k kVar);

    void prepareRequest(Request request);

    void received(MessageReceivedHandler messageReceivedHandler);

    void reconnected(Runnable runnable);

    void reconnecting(Runnable runnable);

    SignalRFuture<Void> send(String str);

    void setCredentials(Credentials credentials);

    void setGroupsToken(String str);

    void setGson(e eVar);

    void setMessageId(String str);

    SignalRFuture<Void> start(ClientTransport clientTransport);

    void stateChanged(StateChangedCallback stateChangedCallback);

    void stop();
}
