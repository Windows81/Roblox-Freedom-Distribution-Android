package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ br f4706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ v f4707b;

    y(v vVar, br brVar) {
        this.f4707b = vVar;
        this.f4706a = brVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4707b.f4700a.a(this.f4706a);
    }
}
