package com.google.android.gms.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ad implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    int f3633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Messenger f3634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ai f3635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    final Queue<aj<?>> f3636d;

    @GuardedBy("this")
    final SparseArray<aj<?>> e;
    final /* synthetic */ ab f;

    private ad(ab abVar) {
        this.f = abVar;
        this.f3633a = 0;
        this.f3634b = new Messenger(new Handler(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.iid.ae

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ad f3637a;

            {
                this.f3637a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f3637a.a(message);
            }
        }));
        this.f3636d = new ArrayDeque();
        this.e = new SparseArray<>();
    }

    private final void c() {
        this.f.f3630b.execute(new Runnable(this) { // from class: com.google.android.gms.iid.ag

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ad f3639a;

            {
                this.f3639a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final ad adVar = this.f3639a;
                while (true) {
                    synchronized (adVar) {
                        if (adVar.f3633a != 2) {
                            return;
                        }
                        if (adVar.f3636d.isEmpty()) {
                            adVar.a();
                            return;
                        }
                        final aj<?> ajVarPoll = adVar.f3636d.poll();
                        adVar.e.put(ajVarPoll.f3644a, ajVarPoll);
                        adVar.f.f3630b.schedule(new Runnable(adVar, ajVarPoll) { // from class: com.google.android.gms.iid.ah

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            private final ad f3640a;

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            private final aj f3641b;

                            {
                                this.f3640a = adVar;
                                this.f3641b = ajVarPoll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f3640a.a(this.f3641b.f3644a);
                            }
                        }, 30L, TimeUnit.SECONDS);
                        if (Log.isLoggable("MessengerIpcClient", 3)) {
                            String strValueOf = String.valueOf(ajVarPoll);
                            Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(strValueOf).length() + 8).append("Sending ").append(strValueOf).toString());
                        }
                        Context context = adVar.f.f3629a;
                        Messenger messenger = adVar.f3634b;
                        Message messageObtain = Message.obtain();
                        messageObtain.what = ajVarPoll.f3646c;
                        messageObtain.arg1 = ajVarPoll.f3644a;
                        messageObtain.replyTo = messenger;
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("oneWay", ajVarPoll.a());
                        bundle.putString("pkg", context.getPackageName());
                        bundle.putBundle("data", ajVarPoll.f3647d);
                        messageObtain.setData(bundle);
                        try {
                            ai aiVar = adVar.f3635c;
                            if (aiVar.f3642a != null) {
                                aiVar.f3642a.send(messageObtain);
                            } else {
                                if (aiVar.f3643b == null) {
                                    throw new IllegalStateException("Both messengers are null");
                                }
                                aiVar.f3643b.a(messageObtain);
                            }
                        } catch (RemoteException e) {
                            adVar.a(2, e.getMessage());
                        }
                    }
                }
            }
        });
    }

    final synchronized void a() {
        if (this.f3633a == 2 && this.f3636d.isEmpty() && this.e.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.f3633a = 3;
            com.google.android.gms.common.stats.a.a().a(this.f.f3629a, this);
        }
    }

    final synchronized void a(int i) {
        aj<?> ajVar = this.e.get(i);
        if (ajVar != null) {
            Log.w("MessengerIpcClient", new StringBuilder(31).append("Timing out request: ").append(i).toString());
            this.e.remove(i);
            ajVar.a(new c(3, "Timed out waiting for response"));
            a();
        }
    }

    final synchronized void a(int i, String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", strValueOf.length() != 0 ? "Disconnected: ".concat(strValueOf) : new String("Disconnected: "));
        }
        switch (this.f3633a) {
            case 0:
                throw new IllegalStateException();
            case 1:
            case 2:
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.f3633a = 4;
                com.google.android.gms.common.stats.a.a().a(this.f.f3629a, this);
                c cVar = new c(i, str);
                Iterator<aj<?>> it = this.f3636d.iterator();
                while (it.hasNext()) {
                    it.next().a(cVar);
                }
                this.f3636d.clear();
                for (int i2 = 0; i2 < this.e.size(); i2++) {
                    this.e.valueAt(i2).a(cVar);
                }
                this.e.clear();
                break;
            case 3:
                this.f3633a = 4;
                break;
            case 4:
                break;
            default:
                throw new IllegalStateException(new StringBuilder(26).append("Unknown state: ").append(this.f3633a).toString());
        }
    }

    final boolean a(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            Log.d("MessengerIpcClient", new StringBuilder(41).append("Received response to request: ").append(i).toString());
        }
        synchronized (this) {
            aj<?> ajVar = this.e.get(i);
            if (ajVar == null) {
                Log.w("MessengerIpcClient", new StringBuilder(50).append("Received response for unknown request: ").append(i).toString());
            } else {
                this.e.remove(i);
                a();
                Bundle data = message.getData();
                if (data.getBoolean("unsupported", false)) {
                    ajVar.a(new c(4, "Not supported by GmsCore"));
                } else {
                    ajVar.a(data);
                }
            }
        }
        return true;
    }

    final synchronized boolean a(aj ajVar) {
        boolean z = true;
        synchronized (this) {
            switch (this.f3633a) {
                case 0:
                    this.f3636d.add(ajVar);
                    com.google.android.gms.common.internal.w.a(this.f3633a == 0);
                    if (Log.isLoggable("MessengerIpcClient", 2)) {
                        Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                    }
                    this.f3633a = 1;
                    Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                    intent.setPackage("com.google.android.gms");
                    if (!com.google.android.gms.common.stats.a.a().a(this.f.f3629a, intent, this, 1)) {
                        a(0, "Unable to bind to service");
                    } else {
                        this.f.f3630b.schedule(new Runnable(this) { // from class: com.google.android.gms.iid.af

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            private final ad f3638a;

                            {
                                this.f3638a = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f3638a.b();
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    break;
                case 1:
                    this.f3636d.add(ajVar);
                    break;
                case 2:
                    this.f3636d.add(ajVar);
                    c();
                    break;
                case 3:
                case 4:
                    z = false;
                    break;
                default:
                    throw new IllegalStateException(new StringBuilder(26).append("Unknown state: ").append(this.f3633a).toString());
            }
        }
        return z;
    }

    final synchronized void b() {
        if (this.f3633a == 1) {
            a(1, "Timed out while binding");
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        if (iBinder == null) {
            a(0, "Null service connection");
        } else {
            try {
                this.f3635c = new ai(iBinder);
                this.f3633a = 2;
                c();
            } catch (RemoteException e) {
                a(0, e.getMessage());
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        a(2, "Service disconnected");
    }
}
