package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final au f3516a;

    protected aw(au auVar) {
        this.f3516a = auVar;
    }

    protected abstract void a();

    public final void a(av avVar) {
        avVar.f.lock();
        try {
            if (avVar.n == this.f3516a) {
                a();
            }
        } finally {
            avVar.f.unlock();
        }
    }
}
