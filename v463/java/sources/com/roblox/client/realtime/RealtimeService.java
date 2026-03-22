package com.roblox.client.realtime;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import com.roblox.client.ae.k;
import com.roblox.client.x;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RealtimeService extends Service {
    private volatile Looper g;
    private volatile d h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.realtime.a f6928a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6929b = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6930c = 20;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6931d = 24;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6932e = 25;
    private final int f = 30;
    private final IBinder i = new b();
    private BroadcastReceiver j = new a();

    private enum e {
        UNBOUND,
        BINDING,
        BOUND,
        UNBINDING
    }

    public class b extends Binder {
        public b() {
        }
    }

    private static class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f6933a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f6934b;

        private a() {
            this.f6933a = false;
            this.f6934b = true;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean zC = x.c(context);
            if (this.f6934b) {
                this.f6933a = zC;
                this.f6934b = false;
            } else if (zC != this.f6933a) {
                this.f6933a = zC;
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.e(zC));
            }
        }
    }

    private final class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.arg1 == 10) {
                RealtimeService.this.c();
                return;
            }
            if (message.arg1 == 20) {
                RealtimeService.this.d();
                return;
            }
            if (message.arg1 == 24) {
                RealtimeService.this.c();
                return;
            }
            if (message.arg1 == 25) {
                RealtimeService.this.e();
            } else if (message.arg1 == 30) {
                RealtimeService.this.d();
                getLooper().quit();
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        registerReceiver(this.j, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        org.greenrobot.eventbus.c.a().a(this);
        a(0L);
        return this.i;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        org.greenrobot.eventbus.c.a().b(this);
        unregisterReceiver(this.j);
        i();
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("RealtimeService");
        handlerThread.start();
        this.g = handlerThread.getLooper();
        this.h = new d(this.g);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.roblox.client.realtime.a aVar = this.f6928a;
        if (aVar != null && aVar.d()) {
            this.f6928a.a(false);
        }
        com.roblox.client.realtime.c cVar = new com.roblox.client.realtime.c();
        this.f6928a = cVar;
        cVar.a("NotificationStream", new com.roblox.client.realtime.d());
        this.f6928a.a("FriendshipNotifications", new com.roblox.client.realtime.b());
        this.f6928a.a("UserThemeTypeChangeNotification", new h());
        this.f6928a.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.roblox.client.realtime.a aVar = this.f6928a;
        if (aVar != null) {
            aVar.a(false);
            this.f6928a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.roblox.client.realtime.a aVar = this.f6928a;
        if (aVar != null) {
            aVar.a(true);
            this.f6928a = null;
        }
    }

    @j(a = ThreadMode.POSTING)
    public void onConnectivityChangeEvent(com.roblox.client.l.e eVar) {
        k.a("RealtimeService", "RealtimeService.onConnectivityChangeEvent() " + eVar.a());
        if (eVar.a()) {
            com.roblox.client.realtime.a aVar = this.f6928a;
            if (aVar == null || aVar.e()) {
                a(0L);
                return;
            }
            return;
        }
        f();
    }

    @j(a = ThreadMode.POSTING)
    public void onLoginEvent(com.roblox.client.l.g gVar) {
        k.b("RealtimeService", "RealtimeService.onLoginEvent()");
        g();
    }

    @j(a = ThreadMode.POSTING)
    public void onLogoutEvent(com.roblox.client.l.h hVar) {
        k.b("RealtimeService", "RealtimeService.onLogoutEvent()");
        h();
    }

    private void a(long j) {
        if (com.roblox.client.s.h.a().b() != -1) {
            Message messageObtainMessage = this.h.obtainMessage();
            messageObtainMessage.arg1 = 10;
            this.h.sendMessageDelayed(messageObtainMessage, j);
        }
    }

    private void f() {
        Message messageObtainMessage = this.h.obtainMessage();
        messageObtainMessage.arg1 = 20;
        this.h.sendMessage(messageObtainMessage);
    }

    private void g() {
        Message messageObtainMessage = this.h.obtainMessage();
        messageObtainMessage.arg1 = 24;
        this.h.sendMessage(messageObtainMessage);
    }

    private void h() {
        Message messageObtainMessage = this.h.obtainMessage();
        messageObtainMessage.arg1 = 25;
        this.h.sendMessage(messageObtainMessage);
    }

    private void i() {
        Message messageObtainMessage = this.h.obtainMessage();
        messageObtainMessage.arg1 = 30;
        this.h.sendMessage(messageObtainMessage);
    }

    public static boolean a() {
        return com.roblox.client.realtime.a.a();
    }

    public static long b() {
        return com.roblox.client.realtime.a.b();
    }

    public static ServiceConnection a(Context context) {
        c cVar = new c(context);
        cVar.a();
        return cVar;
    }

    public static void a(ServiceConnection serviceConnection) {
        if (serviceConnection instanceof c) {
            ((c) serviceConnection).b();
        }
    }

    public static class c implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f6936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f6937b = e.UNBOUND;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f6938c = false;

        public c(Context context) {
            this.f6936a = context;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.f6937b = e.BOUND;
            if (this.f6938c) {
                this.f6938c = false;
                b();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.f6937b = e.UNBOUND;
        }

        public void a() {
            this.f6936a.bindService(new Intent(this.f6936a, (Class<?>) RealtimeService.class), this, 1);
            this.f6937b = e.BINDING;
        }

        public void b() {
            if (this.f6937b == e.BOUND) {
                this.f6936a.unbindService(this);
                this.f6937b = e.UNBINDING;
            } else if (this.f6937b == e.BINDING) {
                this.f6938c = true;
            }
        }
    }
}
