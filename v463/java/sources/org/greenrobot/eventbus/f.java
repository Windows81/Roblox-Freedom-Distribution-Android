package org.greenrobot.eventbus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class f extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f7974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f7976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7977d;

    f(c cVar, Looper looper, int i) {
        super(looper);
        this.f7976c = cVar;
        this.f7975b = i;
        this.f7974a = new i();
    }

    void a(n nVar, Object obj) {
        h hVarA = h.a(nVar, obj);
        synchronized (this) {
            this.f7974a.a(hVarA);
            if (!this.f7977d) {
                this.f7977d = true;
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
                h hVarA = this.f7974a.a();
                if (hVarA == null) {
                    synchronized (this) {
                        hVarA = this.f7974a.a();
                        if (hVarA == null) {
                            this.f7977d = false;
                            return;
                        }
                    }
                }
                this.f7976c.a(hVarA);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f7975b);
            if (!sendMessage(obtainMessage())) {
                throw new e("Could not send handler message");
            }
            this.f7977d = true;
        } finally {
            this.f7977d = false;
        }
    }
}
