package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class dg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ fz f4192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ df f4193b;

    dg(df dfVar, fz fzVar) {
        this.f4193b = dfVar;
        this.f4192a = fzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4192a.p();
        if (ex.v()) {
            this.f4192a.p().a(this);
            return;
        }
        boolean zB = this.f4193b.b();
        df.a(this.f4193b, 0L);
        if (zB) {
            this.f4193b.a();
        }
    }
}
