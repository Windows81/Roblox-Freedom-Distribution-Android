package com.google.android.gms.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ g f3955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ u f3956b;

    v(u uVar, g gVar) {
        this.f3956b = uVar;
        this.f3955a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3956b.f3953b) {
            if (this.f3956b.f3954c != null) {
                this.f3956b.f3954c.a(this.f3955a.d());
            }
        }
    }
}
