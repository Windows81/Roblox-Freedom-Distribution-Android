package microsoft.aspnet.signalr.client.transport;

import com.google.gson.e;
import com.google.gson.t;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.HashSet;
import javax.net.ssl.SSLSocketFactory;
import microsoft.aspnet.signalr.client.ConnectionBase;
import microsoft.aspnet.signalr.client.Constants;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.Platform;
import microsoft.aspnet.signalr.client.SignalRFuture;
import microsoft.aspnet.signalr.client.UpdateableCancellableFuture;
import microsoft.aspnet.signalr.client.http.HttpConnection;
import org.a.a.a;
import org.a.b.c;
import org.a.d.d;
import org.a.e.h;
import org.a.f.b;

/* JADX INFO: loaded from: classes.dex */
public class WebsocketTransport extends HttpClientTransport {
    private static final e gson = new e();
    private UpdateableCancellableFuture<Void> mConnectionFuture;
    private String mPrefix;
    a mWebSocketClient;

    public WebsocketTransport(Logger logger) {
        super(logger);
    }

    public WebsocketTransport(Logger logger, HttpConnection httpConnection) {
        super(logger, httpConnection);
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public String getName() {
        return "webSockets";
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public boolean supportKeepAlive() {
        return true;
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> start(final ConnectionBase connectionBase, ConnectionType connectionType, final DataResultCallback dataResultCallback) {
        UnsupportedEncodingException e;
        boolean z;
        String strReplace;
        boolean z2;
        int i = 0;
        String str = connectionType == ConnectionType.InitialConnection ? "connect" : "reconnect";
        String name = getName();
        try {
            String str2 = connectionBase.getUrl() + "signalr/" + str + "?connectionData=" + URLEncoder.encode(URLEncoder.encode(connectionBase.getConnectionData() != null ? connectionBase.getConnectionData() : "", Constants.UTF8_NAME), Constants.UTF8_NAME) + "&connectionToken=" + URLEncoder.encode(URLEncoder.encode(connectionBase.getConnectionToken(), Constants.UTF8_NAME), Constants.UTF8_NAME) + "&groupsToken=" + URLEncoder.encode(connectionBase.getGroupsToken() != null ? connectionBase.getGroupsToken() : "", Constants.UTF8_NAME) + "&messageId=" + URLEncoder.encode(connectionBase.getMessageId() != null ? connectionBase.getMessageId() : "", Constants.UTF8_NAME) + "&transport=" + URLEncoder.encode(name, Constants.UTF8_NAME);
            try {
                strReplace = connectionBase.getQueryString() != null ? str2 + "&" + connectionBase.getQueryString() : str2;
                try {
                    if (strReplace.startsWith("https://")) {
                        z = true;
                        try {
                            strReplace = strReplace.replace("https://", "wss://");
                        } catch (UnsupportedEncodingException e2) {
                            e = e2;
                            e.printStackTrace();
                            z2 = z;
                        }
                    } else if (strReplace.startsWith("http://")) {
                        strReplace = strReplace.replace("http://", "ws://");
                        z = false;
                    } else {
                        z = false;
                    }
                    z2 = z;
                } catch (UnsupportedEncodingException e3) {
                    e = e3;
                    z = false;
                }
            } catch (UnsupportedEncodingException e4) {
                e = e4;
                strReplace = str2;
                z = false;
            }
        } catch (UnsupportedEncodingException e5) {
            e = e5;
            z = false;
            strReplace = null;
        }
        this.mConnectionFuture = new UpdateableCancellableFuture<>(null);
        try {
            URI uri = new URI(strReplace);
            for (String str3 : new HashSet(connectionBase.getHeaders().keySet())) {
                String str4 = connectionBase.getHeaders().get(str3);
                if (str3.equalsIgnoreCase("Cookie") && !str4.contains(".ROBLOSECURITY") && Platform.getFallbackCookie() != null && Platform.getFallbackCookie().contains(".ROBLOSECURITY")) {
                    log("WST.start() replacing cookie", LogLevel.Critical);
                    connectionBase.getHeaders().put(str3, Platform.getFallbackCookie());
                }
            }
            this.mWebSocketClient = new a(uri, new c(), connectionBase.getHeaders(), i) { // from class: microsoft.aspnet.signalr.client.transport.WebsocketTransport.1
                @Override // org.a.a.a
                public void onOpen(h hVar) {
                    WebsocketTransport.this.rblog("WebSocketClient.onOpen()");
                    WebsocketTransport.this.mConnectionFuture.setResult(null);
                }

                @Override // org.a.a.a
                public void onMessage(String str5) {
                    if (connectionBase.getConnectionId() == null) {
                        WebsocketTransport.this.rblog("WebSocketClient.onMessage() connection ID null: closing");
                        WebsocketTransport.this.mWebSocketClient.closeConnection(1006, "No Connection ID");
                    } else {
                        WebsocketTransport.this.rblog("WebSocketClient.onMessage() id:" + connectionBase.getConnectionId() + " msg:" + str5);
                        dataResultCallback.onData(str5);
                    }
                }

                @Override // org.a.a.a
                public void onClose(int i2, String str5, boolean z3) {
                    WebsocketTransport.this.rblog("WebSocketClient.onClose() code:" + i2 + " reason:" + str5 + " remote:" + z3);
                    WebsocketTransport.this.mWebSocketClient.close();
                }

                @Override // org.a.a.a
                public void onError(Exception exc) {
                    WebsocketTransport.this.rblog("WebSocketClient.onError() e:" + exc.toString());
                    WebsocketTransport.this.mWebSocketClient.closeConnection(1006, "Exception");
                    WebsocketTransport.this.mConnectionFuture.triggerError(exc);
                }

                @Override // org.a.a.a
                public void onFragment(d dVar) {
                    try {
                        String strA = b.a(dVar.c());
                        if (!strA.equals("]}")) {
                            if (strA.endsWith(":[") || WebsocketTransport.this.mPrefix == null) {
                                WebsocketTransport.this.mPrefix = strA;
                            } else {
                                String str5 = WebsocketTransport.this.mPrefix + strA;
                                if (WebsocketTransport.this.isJSONValid(str5)) {
                                    onMessage(str5);
                                } else {
                                    String str6 = str5 + "]}";
                                    if (WebsocketTransport.this.isJSONValid(str6)) {
                                        onMessage(str6);
                                    } else {
                                        WebsocketTransport.this.log("invalid json received:" + strA, LogLevel.Critical);
                                    }
                                }
                            }
                        }
                    } catch (org.a.c.b e6) {
                        e6.printStackTrace();
                    }
                }
            };
            if (z2) {
                try {
                    this.mWebSocketClient.setSocket(((SSLSocketFactory) SSLSocketFactory.getDefault()).createSocket());
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            this.mWebSocketClient.connect();
            connectionBase.closed(new Runnable() { // from class: microsoft.aspnet.signalr.client.transport.WebsocketTransport.2
                @Override // java.lang.Runnable
                public void run() {
                    WebsocketTransport.this.mWebSocketClient.close();
                }
            });
            return this.mConnectionFuture;
        } catch (URISyntaxException e7) {
            e7.printStackTrace();
            this.mConnectionFuture.triggerError(e7);
            return this.mConnectionFuture;
        }
    }

    @Override // microsoft.aspnet.signalr.client.transport.HttpClientTransport, microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> send(ConnectionBase connectionBase, String str, DataResultCallback dataResultCallback) {
        this.mWebSocketClient.send(str);
        return new UpdateableCancellableFuture(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isJSONValid(String str) {
        try {
            gson.a(str, Object.class);
            return true;
        } catch (t e) {
            return false;
        }
    }
}
