package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class bu implements ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Runnable f5942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ br f5943b;

    bu(br brVar, Runnable runnable) {
        this.f5943b = brVar;
        this.f5942a = runnable;
    }

    @Override // com.google.android.gms.internal.measurement.ax
    public final void a(Throwable th) {
        this.f5943b.f5934a.post(this.f5942a);
    }
}
