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
import com.roblox.client.e.k;
import com.roblox.client.e.y;
import com.roblox.client.p;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class RealtimeService extends Service {
    private volatile Looper e;
    private volatile d f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.realtime.a f7732a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7733b = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7734c = 20;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7735d = 30;
    private final IBinder g = new b();
    private BroadcastReceiver h = new a();

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

    public class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f7737b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f7738c = true;

        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean zE = p.e(context);
            if (this.f7738c) {
                this.f7737b = zE;
                this.f7738c = false;
            } else if (zE != this.f7737b) {
                this.f7737b = zE;
                org.greenrobot.eventbus.c.a().c(new k(zE));
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
            } else if (message.arg1 == 30) {
                RealtimeService.this.d();
                getLooper().quit();
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        registerReceiver(this.h, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        org.greenrobot.eventbus.c.a().a(this);
        a(0L);
        return this.g;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        org.greenrobot.eventbus.c.a().b(this);
        unregisterReceiver(this.h);
        f();
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("RealtimeService");
        handlerThread.start();
        this.e = handlerThread.getLooper();
        this.f = new d(this.e);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f7732a != null && this.f7732a.shouldStopPreviousConnectionOnStart()) {
            this.f7732a.stop();
        }
        if (com.roblox.client.b.g()) {
            try {
                this.f7732a = new NativeSignalRImplementation();
            } catch (Throwable th) {
                com.roblox.client.util.g.e("RealtimeService", "Error loading SignalR CPP, fallback to Java");
                this.f7732a = new h(this);
            }
        } else {
            this.f7732a = new h(this);
        }
        if (com.roblox.client.b.f()) {
            if (com.roblox.client.n.a.a()) {
                this.f7732a.setProcessor("ChatNotifications", new com.roblox.client.realtime.e());
            } else {
                this.f7732a.setProcessor("ChatNotifications", new com.roblox.client.realtime.c(this));
            }
        }
        g gVar = new g();
        this.f7732a.setProcessor("PresenceNotifications", gVar);
        this.f7732a.setProcessor("PresenceBulkNotifications", gVar);
        this.f7732a.setProcessor("NotificationStream", new f());
        this.f7732a.setProcessor("FriendshipNotifications", new com.roblox.client.realtime.d());
        this.f7732a.setProcessor("ChatPrivacySettingNotifications", new com.roblox.client.realtime.b());
        this.f7732a.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f7732a != null) {
            this.f7732a.stop();
            this.f7732a = null;
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.POSTING)
    public void onConnectivityChangeEvent(k kVar) {
        com.roblox.client.util.g.a("RealtimeService", "RealtimeService.onConnectivityChangeEvent() " + kVar.a());
        if (kVar.a()) {
            if (this.f7732a == null || this.f7732a.canStartConnectionOnConnectivityRestore()) {
                a(0L);
                return;
            }
            return;
        }
        e();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.POSTING)
    public void onUserLoggedInFromGuestModeEvent(y yVar) {
        com.roblox.client.util.g.a("RealtimeService", "RealtimeService.onUserLoggedInFromGuestModeEvent()");
        if (this.f7732a == null) {
            a(1000L);
        }
    }

    private void a(long j) {
        if (com.roblox.client.i.h.a().b() != -1 && com.roblox.client.b.h()) {
            Message messageObtainMessage = this.f.obtainMessage();
            messageObtainMessage.arg1 = 10;
            this.f.sendMessageDelayed(messageObtainMessage, j);
        }
    }

    private void e() {
        Message messageObtainMessage = this.f.obtainMessage();
        messageObtainMessage.arg1 = 20;
        this.f.sendMessage(messageObtainMessage);
    }

    private void f() {
        Message messageObtainMessage = this.f.obtainMessage();
        messageObtainMessage.arg1 = 30;
        this.f.sendMessage(messageObtainMessage);
    }

    public static boolean a() {
        return com.roblox.client.realtime.a.isSignalRConnected();
    }

    public static long b() {
        return com.roblox.client.realtime.a.getSequenceNumber();
    }

    public static ServiceConnection a(Context context) {
        if (!com.roblox.client.b.F()) {
            return null;
        }
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
        private Context f7740a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f7741b = e.UNBOUND;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f7742c = false;

        public c(Context context) {
            this.f7740a = context;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.f7741b = e.BOUND;
            if (this.f7742c) {
                this.f7742c = false;
                b();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.f7741b = e.UNBOUND;
        }

        public void a() {
            this.f7740a.bindService(new Intent(this.f7740a, (Class<?>) RealtimeService.class), this, 1);
            this.f7741b = e.BINDING;
        }

        public void b() {
            if (this.f7741b == e.BOUND) {
                this.f7740a.unbindService(this);
                this.f7741b = e.UNBINDING;
            } else if (this.f7741b == e.BINDING) {
                this.f7742c = true;
            }
        }
    }
}
