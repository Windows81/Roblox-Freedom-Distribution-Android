package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ch implements bk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Runnable f4142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ce f4143b;

    ch(ce ceVar, Runnable runnable) {
        this.f4143b = ceVar;
        this.f4142a = runnable;
    }

    @Override // com.google.android.gms.internal.measurement.bk
    public final void a(Throwable th) {
        this.f4143b.f4134a.post(this.f4142a);
    }
}
