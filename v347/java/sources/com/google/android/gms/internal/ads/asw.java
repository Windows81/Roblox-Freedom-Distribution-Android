package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class asw implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ asv f4460a;

    asw(asv asvVar) {
        this.f4460a = asvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4460a.n != null) {
            this.f4460a.n.i();
            this.f4460a.n.h();
            this.f4460a.n.k();
        }
        asv.a(this.f4460a, null);
    }
}
