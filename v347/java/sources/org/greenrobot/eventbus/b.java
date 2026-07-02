package org.greenrobot.eventbus;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f8239a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f8240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f8241c;

    b(c cVar) {
        this.f8240b = cVar;
    }

    public void a(n nVar, Object obj) {
        h hVarA = h.a(nVar, obj);
        synchronized (this) {
            this.f8239a.a(hVarA);
            if (!this.f8241c) {
                this.f8241c = true;
                this.f8240b.c().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        h hVarA;
        while (true) {
            try {
                hVarA = this.f8239a.a(1000);
            } catch (InterruptedException e) {
                Log.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.f8241c = false;
            }
            if (hVarA == null) {
                synchronized (this) {
                    hVarA = this.f8239a.a();
                    if (hVarA == null) {
                        this.f8241c = false;
                        return;
                    }
                    Log.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                    return;
                }
            }
            this.f8240b.a(hVarA);
        }
    }
}
