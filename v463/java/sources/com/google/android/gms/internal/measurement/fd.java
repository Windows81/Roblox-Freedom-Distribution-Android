package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fd implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ga f4318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ fc f4319b;

    fd(fc fcVar, ga gaVar) {
        this.f4319b = fcVar;
        this.f4318a = gaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4319b.a(this.f4318a);
        this.f4319b.a();
    }
}
