package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class asu implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ast f4455a;

    asu(ast astVar) {
        this.f4455a = astVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4455a.p != null) {
            this.f4455a.p.i();
            this.f4455a.p.h();
            this.f4455a.p.k();
        }
        ast.a(this.f4455a, null);
    }
}
