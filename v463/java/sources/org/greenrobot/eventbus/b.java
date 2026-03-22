package org.greenrobot.eventbus;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f7954a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f7955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f7956c;

    b(c cVar) {
        this.f7955b = cVar;
    }

    public void a(n nVar, Object obj) {
        h hVarA = h.a(nVar, obj);
        synchronized (this) {
            this.f7954a.a(hVarA);
            if (!this.f7956c) {
                this.f7956c = true;
                this.f7955b.c().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        h hVarA;
        while (true) {
            try {
                hVarA = this.f7954a.a(1000);
            } catch (InterruptedException e2) {
                Log.w("Event", Thread.currentThread().getName() + " was interruppted", e2);
                return;
            } finally {
                this.f7956c = false;
            }
            if (hVarA == null) {
                synchronized (this) {
                    hVarA = this.f7954a.a();
                    if (hVarA == null) {
                        return;
                    }
                    this.f7956c = false;
                }
            }
            this.f7955b.a(hVarA);
        }
    }
}
