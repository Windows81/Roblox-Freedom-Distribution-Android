package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class og implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oa f5375a;

    og(oa oaVar) {
        this.f5375a = oaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5375a.r != null) {
            this.f5375a.r.a();
        }
    }
}
