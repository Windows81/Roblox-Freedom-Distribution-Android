package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cr implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ long f4165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ cp f4166c;

    cr(cp cpVar, String str, long j) {
        this.f4166c = cpVar;
        this.f4164a = str;
        this.f4165b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4166c.b(this.f4164a, this.f4165b);
    }
}
