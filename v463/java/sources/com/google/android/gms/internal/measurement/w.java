package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f4701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ v f4702b;

    w(v vVar, boolean z) {
        this.f4702b = vVar;
        this.f4701a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4702b.f4700a.g();
    }
}
