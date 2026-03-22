package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class ak implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aa f3492a;

    private ak(aa aaVar) {
        this.f3492a = aaVar;
    }

    /* synthetic */ ak(aa aaVar, ab abVar) {
        this(aaVar);
    }

    protected abstract void a();

    @Override // java.lang.Runnable
    public void run() {
        this.f3492a.f3473b.lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    a();
                }
            } catch (RuntimeException e2) {
                this.f3492a.f3472a.a(e2);
            }
        } finally {
            this.f3492a.f3473b.unlock();
        }
    }
}
