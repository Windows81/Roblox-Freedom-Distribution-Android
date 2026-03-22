package com.google.firebase.iid;

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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class f implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f5251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Messenger f5252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    k f5253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Queue<m<?>> f5254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final SparseArray<m<?>> f5255e;
    final /* synthetic */ d f;

    private f(d dVar) {
        this.f = dVar;
        this.f5251a = 0;
        this.f5252b = new Messenger(new Handler(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.g

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final f f5256a;

            {
                this.f5256a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f5256a.a(message);
            }
        }));
        this.f5254d = new ArrayDeque();
        this.f5255e = new SparseArray<>();
    }

    final synchronized boolean a(m mVar) {
        int i = this.f5251a;
        if (i == 0) {
            this.f5254d.add(mVar);
            com.google.android.gms.common.internal.aa.a(this.f5251a == 0);
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Starting bind to GmsCore");
            }
            this.f5251a = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            if (!com.google.android.gms.common.stats.a.a().a(this.f.f5247b, intent, this, 1)) {
                a(0, "Unable to bind to service");
            } else {
                this.f.f5248c.schedule(new Runnable(this) { // from class: com.google.firebase.iid.h

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final f f5257a;

                    {
                        this.f5257a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5257a.b();
                    }
                }, 30L, TimeUnit.SECONDS);
            }
            return true;
        }
        if (i == 1) {
            this.f5254d.add(mVar);
            return true;
        }
        if (i == 2) {
            this.f5254d.add(mVar);
            c();
            return true;
        }
        if (i != 3 && i != 4) {
            int i2 = this.f5251a;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Unknown state: ");
            sb.append(i2);
            throw new IllegalStateException(sb.toString());
        }
        return false;
    }

    final boolean a(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            m<?> mVar = this.f5255e.get(i);
            if (mVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f5255e.remove(i);
            a();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                mVar.a(new n(4, "Not supported by GmsCore"));
            } else {
                mVar.a(data);
            }
            return true;
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        if (iBinder == null) {
            a(0, "Null service connection");
            return;
        }
        try {
            this.f5253c = new k(iBinder);
            this.f5251a = 2;
            c();
        } catch (RemoteException e2) {
            a(0, e2.getMessage());
        }
    }

    private final void c() {
        this.f.f5248c.execute(new Runnable(this) { // from class: com.google.firebase.iid.i

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final f f5258a;

            {
                this.f5258a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final m<?> mVarPoll;
                final f fVar = this.f5258a;
                while (true) {
                    synchronized (fVar) {
                        if (fVar.f5251a != 2) {
                            return;
                        }
                        if (fVar.f5254d.isEmpty()) {
                            fVar.a();
                            return;
                        } else {
                            mVarPoll = fVar.f5254d.poll();
                            fVar.f5255e.put(mVarPoll.f5263a, mVarPoll);
                            fVar.f.f5248c.schedule(new Runnable(fVar, mVarPoll) { // from class: com.google.firebase.iid.j

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                private final f f5259a;

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                private final m f5260b;

                                {
                                    this.f5259a = fVar;
                                    this.f5260b = mVarPoll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f5259a.a(this.f5260b.f5263a);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String strValueOf = String.valueOf(mVarPoll);
                        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(strValueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    Context context = fVar.f.f5247b;
                    Messenger messenger = fVar.f5252b;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = mVarPoll.f5265c;
                    messageObtain.arg1 = mVarPoll.f5263a;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", mVarPoll.a());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", mVarPoll.f5266d);
                    messageObtain.setData(bundle);
                    try {
                        fVar.f5253c.a(messageObtain);
                    } catch (RemoteException e2) {
                        fVar.a(2, e2.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        a(2, "Service disconnected");
    }

    final synchronized void a(int i, String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", strValueOf.length() != 0 ? "Disconnected: ".concat(strValueOf) : new String("Disconnected: "));
        }
        int i2 = this.f5251a;
        if (i2 == 0) {
            throw new IllegalStateException();
        }
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3) {
                this.f5251a = 4;
                return;
            } else {
                if (i2 == 4) {
                    return;
                }
                int i3 = this.f5251a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i3);
                throw new IllegalStateException(sb.toString());
            }
        }
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Unbinding service");
        }
        this.f5251a = 4;
        com.google.android.gms.common.stats.a.a().a(this.f.f5247b, this);
        n nVar = new n(i, str);
        Iterator<m<?>> it = this.f5254d.iterator();
        while (it.hasNext()) {
            it.next().a(nVar);
        }
        this.f5254d.clear();
        for (int i4 = 0; i4 < this.f5255e.size(); i4++) {
            this.f5255e.valueAt(i4).a(nVar);
        }
        this.f5255e.clear();
    }

    final synchronized void a() {
        if (this.f5251a == 2 && this.f5254d.isEmpty() && this.f5255e.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.f5251a = 3;
            com.google.android.gms.common.stats.a.a().a(this.f.f5247b, this);
        }
    }

    final synchronized void b() {
        if (this.f5251a == 1) {
            a(1, "Timed out while binding");
        }
    }

    final synchronized void a(int i) {
        m<?> mVar = this.f5255e.get(i);
        if (mVar != null) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Timing out request: ");
            sb.append(i);
            Log.w("MessengerIpcClient", sb.toString());
            this.f5255e.remove(i);
            mVar.a(new n(3, "Timed out waiting for response"));
            a();
        }
    }
}
