package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class z implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bk f4708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ v f4709b;

    z(v vVar, bk bkVar) {
        this.f4709b = vVar;
        this.f4708a = bkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4709b.f4700a.a(this.f4708a);
    }
}
