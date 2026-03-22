package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class oc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oa f5370a;

    oc(oa oaVar) {
        this.f5370a = oaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5370a.r != null) {
            this.f5370a.r.b();
        }
    }
}
