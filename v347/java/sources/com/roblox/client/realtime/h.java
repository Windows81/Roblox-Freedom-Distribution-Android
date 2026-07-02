package com.roblox.client.realtime;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.webkit.CookieManager;
import com.roblox.client.RobloxSettings;
import com.roblox.client.e.v;
import com.roblox.client.p;
import com.roblox.engine.jni.NativeGLInterface;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import microsoft.aspnet.signalr.client.Connection;
import microsoft.aspnet.signalr.client.ConnectionState;
import microsoft.aspnet.signalr.client.ErrorCallback;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.Platform;
import microsoft.aspnet.signalr.client.http.android.AndroidPlatformComponent;
import microsoft.aspnet.signalr.client.hubs.HubConnection;
import microsoft.aspnet.signalr.client.hubs.HubProxy;
import microsoft.aspnet.signalr.client.hubs.SubscriptionHandler1;
import microsoft.aspnet.signalr.client.hubs.SubscriptionHandler2;
import microsoft.aspnet.signalr.client.hubs.SubscriptionHandler3;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.roblox.client.realtime.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f7751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HubConnection f7752d;
    private HubProxy e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7749a = "rbx.signalr_java";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7750b = 9;
    private boolean f = false;
    private int h = 0;
    private Runnable i = null;
    private Runnable j = null;
    private i k = new i();
    private SubscriptionHandler3 l = new SubscriptionHandler3<String, String, Long>() { // from class: com.roblox.client.realtime.h.1
        @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler3
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void run(String str, String str2, Long l) {
            h.this.b("RbxSignalRImpl SubscriptionHandler3[notification]: " + str + " " + str2 + " " + l);
            h.this.a(l.longValue());
            if (com.roblox.client.realtime.a.isSignalRConnected() && h.this.k != null) {
                h.this.k.a(str, str2, l.longValue());
                com.roblox.client.hybrid.a.i.a(str, str2, l.longValue());
                if (com.roblox.client.b.H()) {
                    NativeGLInterface.nativeBroadcastEventWithNamespace(str, str2, h.this.getTypeFromPayload(str2));
                }
            }
        }
    };
    private SubscriptionHandler2 m = new SubscriptionHandler2<String, String>() { // from class: com.roblox.client.realtime.h.2
        @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void run(String str, String str2) {
            h.this.b("RbxSignalRImpl SubscriptionHandler2[notification]: " + str + " " + str2);
            if (com.roblox.client.realtime.a.isSignalRConnected() && h.this.k != null) {
                h.this.k.a(str, str2, -1L);
                com.roblox.client.hybrid.a.i.a(str, str2, -1L);
                if (com.roblox.client.b.H()) {
                    NativeGLInterface.nativeBroadcastEventWithNamespace(str, str2, h.this.getTypeFromPayload(str2));
                }
            }
        }
    };
    private SubscriptionHandler2 n = new SubscriptionHandler2<String, String>() { // from class: com.roblox.client.realtime.h.3
        @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void run(String str, String str2) {
            long jMin;
            JSONException e;
            boolean z;
            long jOptLong;
            h.this.b("RbxSignalRImpl SubscriptionHandler2[subscriptionStatus]: " + str + " " + str2);
            if ("Reconnected".equals(str) || ("Subscribed".equals(str) && !com.roblox.client.realtime.a.sSignalRConnected)) {
                h.this.d();
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    jMin = jSONObject.optLong("MillisecondsBeforeHandlingReconnect", 0L);
                    try {
                        jOptLong = jSONObject.optLong("SequenceNumber", -1L);
                        z = (com.roblox.client.realtime.a.getSequenceNumber() != jOptLong) | (jOptLong < 1);
                    } catch (JSONException e2) {
                        z = true;
                        e = e2;
                    }
                    try {
                        h.this.a(jOptLong);
                    } catch (JSONException e3) {
                        e = e3;
                        e.printStackTrace();
                    }
                } catch (JSONException e4) {
                    jMin = 0;
                    e = e4;
                    z = true;
                }
                h.this.j = h.this.new a(z);
                if (com.roblox.client.b.N() >= 0) {
                    jMin = Math.min(com.roblox.client.b.N(), jMin);
                }
                h.this.g.postDelayed(h.this.j, jMin);
            }
        }
    };
    private SubscriptionHandler1 o = new SubscriptionHandler1<String>() { // from class: com.roblox.client.realtime.h.4
        @Override // microsoft.aspnet.signalr.client.hubs.SubscriptionHandler1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void run(String str) {
            h.this.b("RbxSignalRImpl SubscriptionHandler1[subscriptionStatus]: " + str);
            if ("ConnectionLost".equals(str)) {
                h.this.stop();
                h.this.b();
                h.this.e();
            }
        }
    };
    private Logger p = new Logger() { // from class: com.roblox.client.realtime.h.5
        @Override // microsoft.aspnet.signalr.client.Logger
        public void log(String str, LogLevel logLevel) {
            if (h.this.f) {
                if (logLevel == LogLevel.Critical) {
                    h.this.a("Logger:" + str);
                } else {
                    h.this.b("Logger:" + str);
                }
            }
        }
    };
    private Handler g = new Handler();

    static /* synthetic */ int j(h hVar) {
        int i = hVar.h;
        hVar.h = i + 1;
        return i;
    }

    public h(Context context) {
        this.f7751c = context;
    }

    @Override // com.roblox.client.realtime.a
    public void setProcessor(String str, j jVar) {
        this.k.a(str, jVar);
    }

    private class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f7766b;

        public a(boolean z) {
            this.f7766b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.a(true, this.f7766b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        if (j != -1) {
            sSequenceNumber = j;
        }
    }

    private void a(Connection connection) {
        if (connection != null) {
            Map<String, String> headers = connection.getHeaders();
            headers.put("Cookie", CookieManager.getInstance().getCookie(Uri.parse(RobloxSettings.baseUrl()).getHost()));
            headers.put("User-Agent", RobloxSettings.userAgent());
            if (com.roblox.client.b.aB()) {
                headers.put("RBX-Device-Handle", com.roblox.client.c.a().c());
            }
            if (com.roblox.client.b.aD()) {
                headers.put("X-Ablm", com.roblox.client.c.a().e());
            }
        }
    }

    public ConnectionState a() {
        if (this.f7752d != null) {
            return this.f7752d.getState();
        }
        return null;
    }

    private void c() {
        if (this.i != null) {
            this.g.removeCallbacks(this.i);
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.j != null) {
            this.g.removeCallbacks(this.j);
            this.j = null;
        }
    }

    public void b() {
        if (this.f7752d == null) {
            String cookie = CookieManager.getInstance().getCookie(RobloxSettings.baseUrl());
            if (cookie != null && cookie.contains(".ROBLOSECURITY")) {
                Platform.setFallbackCookie(cookie);
            } else {
                Platform.setFallbackCookie(null);
            }
            String strBaseSignalRUrl = RobloxSettings.baseSignalRUrl();
            Platform.loadPlatformComponent(new AndroidPlatformComponent());
            this.f7752d = new HubConnection(strBaseSignalRUrl, null, false, this.p);
            this.e = this.f7752d.createHubProxy("UserNotificationHub");
            this.e.on("notification", this.m, String.class, String.class);
            this.e.on("notification", this.l, String.class, String.class, Long.class);
            this.e.on("subscriptionStatus", this.n, String.class, String.class);
            this.e.on("subscriptionStatus", this.o, String.class);
            this.f7752d.error(new ErrorCallback() { // from class: com.roblox.client.realtime.h.6
                @Override // microsoft.aspnet.signalr.client.ErrorCallback
                public void onError(Throwable th) {
                    th.printStackTrace();
                    h.this.d();
                    h.this.a("RbxSignalRImpl mConn.onError() state:" + h.this.a());
                    h.this.a(false);
                    if (h.this.f7752d != null) {
                        h.this.f7752d.disconnect();
                        h.this.f7752d = null;
                    }
                    if (p.e(h.this.f7751c) && h.this.i == null) {
                        h.j(h.this);
                        final long jPow = (((long) Math.pow(2.0d, Math.min(9, h.this.h))) * 1000) - 1000;
                        h.this.a("RbxSignalRImpl mConn.onError() restartSignalR() timeout:" + jPow);
                        h.this.i = new Runnable() { // from class: com.roblox.client.realtime.h.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                h.this.a("RbxSignalRImpl mConn.onError() restartSignalR() timeout:" + jPow + " RUN()");
                                h.this.b();
                                h.this.e();
                                h.this.i = null;
                            }
                        };
                        h.this.g.postDelayed(h.this.i, jPow);
                    }
                }
            });
            this.f7752d.connected(new Runnable() { // from class: com.roblox.client.realtime.h.7
                @Override // java.lang.Runnable
                public void run() {
                    h.this.b("RbxSignalRImpl mConn.connected() " + h.this.a());
                    h.this.d();
                    h.this.h = 0;
                    if (com.roblox.client.b.O() >= 0) {
                        final long jRandom = ((long) (Math.random() * 10000.0d)) + com.roblox.client.b.O();
                        h.this.j = new Runnable() { // from class: com.roblox.client.realtime.h.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                h.this.b("RbxSignalRImpl mConn.connected() no \"Reconnected\" message from server within timeout:" + jRandom);
                                h.this.a(true, true);
                            }
                        };
                        h.this.g.postDelayed(h.this.j, jRandom);
                    }
                }
            });
            this.f7752d.closed(new Runnable() { // from class: com.roblox.client.realtime.h.8
                @Override // java.lang.Runnable
                public void run() {
                    h.this.a("RbxSignalRImpl mConn.closed() " + h.this.a());
                    h.this.d();
                    h.this.a(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        a(z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        b("RbxSignalRImpl.postSignalRConnectivityChangeEvent() " + z + " prev:" + sSignalRConnected + " shouldUpdate:" + z2);
        if (sSignalRConnected != z) {
            sSignalRConnected = z;
            org.greenrobot.eventbus.c.a().c(new v(z, getSequenceNumber(), z2));
            com.roblox.client.hybrid.a.i.a(z, getSequenceNumber());
            if (com.roblox.client.b.H()) {
                NativeGLInterface.nativeBroadcastConnection(z ? 1 : 0, Long.toString(getSequenceNumber()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        b("RbxSignalRImpl.start() state:" + a());
        if (a() == ConnectionState.Disconnected) {
            if (this.f7752d == null) {
                b();
            }
            a(this.f7752d);
            try {
                this.f7752d.start().get();
            } catch (InterruptedException e) {
                a("InterruptedException");
            } catch (ExecutionException e2) {
                a("ExecutionException");
            }
        }
    }

    private void b(boolean z) {
        b("RbxSignalRImpl.stop() " + a());
        if (z) {
            c();
        }
        d();
        if (this.f7752d != null) {
            this.f7752d.stop();
            this.f7752d = null;
            this.e = null;
        }
        a(false);
    }

    @Override // com.roblox.client.realtime.a
    public void stop() {
        b(true);
    }

    @Override // com.roblox.client.realtime.a
    public void start() {
        b();
        e();
    }

    @Override // com.roblox.client.realtime.a
    public boolean shouldStopPreviousConnectionOnStart() {
        return true;
    }

    @Override // com.roblox.client.realtime.a
    public boolean canStartConnectionOnConnectivityRestore() {
        return a() == null || a() == ConnectionState.Disconnected;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
    }
}
