package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class k implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f3799a;
    private final Handler h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<f.b> f3800b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<f.b> f3801c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<f.c> f3802d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f3803e = false;
    private final AtomicInteger f = new AtomicInteger(0);
    private boolean g = false;
    private final Object i = new Object();

    public interface a {
        Bundle a();

        boolean h();
    }

    public k(Looper looper, a aVar) {
        this.f3799a = aVar;
        this.h = new Handler(looper, this);
    }

    public final void a() {
        this.f3803e = false;
        this.f.incrementAndGet();
    }

    public final void a(int i) {
        aa.a(Looper.myLooper() == this.h.getLooper(), "onUnintentionalDisconnection must only be called on the Handler thread");
        this.h.removeMessages(1);
        synchronized (this.i) {
            this.g = true;
            ArrayList arrayList = new ArrayList(this.f3800b);
            int i2 = this.f.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                f.b bVar = (f.b) obj;
                if (!this.f3803e || this.f.get() != i2) {
                    break;
                } else if (this.f3800b.contains(bVar)) {
                    bVar.a(i);
                }
            }
            this.f3801c.clear();
            this.g = false;
        }
    }

    public final void a(Bundle bundle) {
        boolean z = true;
        aa.a(Looper.myLooper() == this.h.getLooper(), "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.i) {
            aa.a(!this.g);
            this.h.removeMessages(1);
            this.g = true;
            if (this.f3801c.size() != 0) {
                z = false;
            }
            aa.a(z);
            ArrayList arrayList = new ArrayList(this.f3800b);
            int i = this.f.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                f.b bVar = (f.b) obj;
                if (!this.f3803e || !this.f3799a.h() || this.f.get() != i) {
                    break;
                } else if (!this.f3801c.contains(bVar)) {
                    bVar.a(bundle);
                }
            }
            this.f3801c.clear();
            this.g = false;
        }
    }

    public final void a(ConnectionResult connectionResult) {
        int i = 0;
        aa.a(Looper.myLooper() == this.h.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.h.removeMessages(1);
        synchronized (this.i) {
            ArrayList arrayList = new ArrayList(this.f3802d);
            int i2 = this.f.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                f.c cVar = (f.c) obj;
                if (this.f3803e && this.f.get() == i2) {
                    if (this.f3802d.contains(cVar)) {
                        cVar.a(connectionResult);
                    }
                }
                return;
            }
        }
    }

    public final void a(f.b bVar) {
        aa.a(bVar);
        synchronized (this.i) {
            if (this.f3800b.contains(bVar)) {
                String strValueOf = String.valueOf(bVar);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(strValueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f3800b.add(bVar);
            }
        }
        if (this.f3799a.h()) {
            Handler handler = this.h;
            handler.sendMessage(handler.obtainMessage(1, bVar));
        }
    }

    public final void a(f.c cVar) {
        aa.a(cVar);
        synchronized (this.i) {
            if (this.f3802d.contains(cVar)) {
                String strValueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(strValueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f3802d.add(cVar);
            }
        }
    }

    public final void b() {
        this.f3803e = true;
    }

    public final void b(f.c cVar) {
        aa.a(cVar);
        synchronized (this.i) {
            if (!this.f3802d.remove(cVar)) {
                String strValueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(strValueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            int i = message.what;
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i);
            Log.wtf("GmsClientEvents", sb.toString(), new Exception());
            return false;
        }
        f.b bVar = (f.b) message.obj;
        synchronized (this.i) {
            if (this.f3803e && this.f3799a.h() && this.f3800b.contains(bVar)) {
                bVar.a(this.f3799a.a());
            }
        }
        return true;
    }
}
