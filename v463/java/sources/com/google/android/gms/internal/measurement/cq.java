package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ long f4162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ cp f4163c;

    cq(cp cpVar, String str, long j) {
        this.f4163c = cpVar;
        this.f4161a = str;
        this.f4162b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4163c.a(this.f4161a, this.f4162b);
    }
}
