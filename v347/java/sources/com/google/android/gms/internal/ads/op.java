package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final /* synthetic */ class op implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final om f5388a;

    private op(om omVar) {
        this.f5388a = omVar;
    }

    static Runnable a(om omVar) {
        return new op(omVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5388a.b();
    }
}
