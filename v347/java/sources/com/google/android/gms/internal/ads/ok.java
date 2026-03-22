package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ok implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oa f5381a;

    ok(oa oaVar) {
        this.f5381a = oaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5381a.r != null) {
            this.f5381a.r.d();
        }
    }
}
