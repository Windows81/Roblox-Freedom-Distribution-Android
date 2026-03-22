package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class oi implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oa f5379a;

    oi(oa oaVar) {
        this.f5379a = oaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5379a.r != null) {
            this.f5379a.r.d();
            this.f5379a.r.f();
        }
    }
}
