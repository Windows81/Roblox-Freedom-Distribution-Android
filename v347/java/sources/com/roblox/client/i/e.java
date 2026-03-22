package com.roblox.client.i;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.roblox.client.RobloxService;
import com.roblox.client.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f7176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f7177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<c> f7178d;
    private List<Message> e;
    private Messenger f;
    private Messenger g;
    private ServiceConnection h;
    private BroadcastReceiver i;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f7188a = new e();
    }

    public interface c {
        void a(int i, Bundle bundle);
    }

    public static e a() {
        return a.f7188a;
    }

    private e() {
        this.f7177c = new Handler(Looper.getMainLooper());
        this.f7178d = new ArrayList<>();
        this.e = new ArrayList();
        this.f = null;
        this.g = new Messenger(new b());
        this.h = new ServiceConnection() { // from class: com.roblox.client.i.e.4
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                e.this.f = new Messenger(iBinder);
                try {
                    Message messageObtain = Message.obtain((Handler) null, 1);
                    messageObtain.replyTo = e.this.g;
                    e.this.f.send(messageObtain);
                    com.roblox.client.util.g.b("NotificationManager", "NotificationManager.onServiceConnected success");
                    Iterator it = e.this.e.iterator();
                    while (it.hasNext()) {
                        try {
                            e.this.f.send((Message) it.next());
                        } catch (RemoteException e) {
                            com.roblox.client.util.g.e("NotificationManager", p.a("NotificationManager.doNotifyService failed service dead", new Object[0]));
                        }
                    }
                    e.this.e.clear();
                } catch (RemoteException e2) {
                    com.roblox.client.util.g.e("NotificationManager", "NotificationManager.onServiceConnected failed");
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                com.roblox.client.util.g.b("NotificationManager", "NotificationManager.onServiceDisconnected");
            }
        };
        this.i = new BroadcastReceiver() { // from class: com.roblox.client.i.e.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int intExtra = intent.getIntExtra("notificationId", -1);
                com.roblox.client.util.g.a("NotificationManager", p.a("NotificationManager > BroadcastReceiver.onReceive() notificationId:" + intExtra, new Object[0]));
                if (intExtra == 101) {
                    e.this.a(101, intent.getBundleExtra("userParams"));
                }
            }
        };
    }

    public void a(Context context) {
        com.roblox.client.util.g.b("NotificationManager", "init:");
        this.f7176b = context.getApplicationContext();
        b(this.f7176b);
        this.f7175a = true;
    }

    public void a(final c cVar) {
        if (!this.f7175a) {
            throw new IllegalStateException("NotificationManager was not initialized");
        }
        this.f7177c.post(new Runnable() { // from class: com.roblox.client.i.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.this.f7178d.add(cVar);
            }
        });
    }

    public void b(final c cVar) {
        if (!this.f7175a) {
            throw new IllegalStateException("NotificationManager was not initialized");
        }
        this.f7177c.post(new Runnable() { // from class: com.roblox.client.i.e.2
            @Override // java.lang.Runnable
            public void run() {
                while (e.this.f7178d.remove(cVar)) {
                }
            }
        });
    }

    public void a(int i) {
        if (!this.f7175a) {
            throw new IllegalStateException("NotificationManager was not initialized");
        }
        a(i, (Bundle) null);
    }

    public void a(int i, Bundle bundle) {
        if (!this.f7175a) {
            throw new IllegalStateException("NotificationManager was not initialized");
        }
        b(i, bundle);
        c(i, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i, final Bundle bundle) {
        this.f7177c.post(new Runnable() { // from class: com.roblox.client.i.e.3
            @Override // java.lang.Runnable
            public void run() {
                for (c cVar : e.this.f7178d) {
                    com.roblox.client.util.g.b("NotificationManager", "observer= " + cVar.getClass() + ". notificationId= " + i + ".");
                    cVar.a(i, bundle);
                }
            }
        });
    }

    private void c(int i, Bundle bundle) {
        Message messageObtain = Message.obtain();
        messageObtain.replyTo = this.g;
        messageObtain.what = 3;
        messageObtain.arg1 = i;
        messageObtain.arg2 = 0;
        messageObtain.setData(bundle);
        if (this.f == null) {
            this.e.add(messageObtain);
            return;
        }
        try {
            this.f.send(messageObtain);
        } catch (RemoteException e) {
            com.roblox.client.util.g.e("NotificationManager", p.a("NotificationManager.postRemoteNotification failed service dead", new Object[0]));
        }
    }

    private void b(Context context) {
        com.roblox.client.util.g.b("NotificationManager", "bindService:");
        Intent intent = new Intent(context, (Class<?>) RobloxService.class);
        intent.putExtra("roblox_launcher_debugger_attached", Debug.isDebuggerConnected());
        if (!context.bindService(intent, this.h, 1)) {
            com.roblox.client.util.g.e("NotificationManager", "NotificationManager.doBindService failed");
        }
        android.support.v4.a.f.a(context).a(this.i, new IntentFilter("com.roblox.android.notificationmanager.POST"));
    }

    private class b extends Handler {
        private b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 3:
                    int i = message.arg1;
                    Bundle data = message.getData();
                    e.this.b(i, data);
                    com.roblox.client.util.g.b("NotificationManager", String.format("NotificationManager.handleMessage remote %d %s", Integer.valueOf(i), data.toString()));
                    break;
                default:
                    super.handleMessage(message);
                    break;
            }
        }
    }
}
