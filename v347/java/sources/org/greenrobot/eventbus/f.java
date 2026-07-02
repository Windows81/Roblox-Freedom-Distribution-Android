package org.greenrobot.eventbus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
final class f extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f8256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f8258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8259d;

    f(c cVar, Looper looper, int i) {
        super(looper);
        this.f8258c = cVar;
        this.f8257b = i;
        this.f8256a = new i();
    }

    void a(n nVar, Object obj) {
        h hVarA = h.a(nVar, obj);
        synchronized (this) {
            this.f8256a.a(hVarA);
            if (!this.f8259d) {
                this.f8259d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new e("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                h hVarA = this.f8256a.a();
                if (hVarA == null) {
                    synchronized (this) {
                        hVarA = this.f8256a.a();
                        if (hVarA == null) {
                            this.f8259d = false;
                            return;
                        }
                    }
                }
                this.f8258c.a(hVarA);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f8257b);
            if (!sendMessage(obtainMessage())) {
                throw new e("Could not send handler message");
            }
            this.f8259d = true;
        } finally {
            this.f8259d = false;
        }
    }
}
