package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class awg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ long f4549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ avg f4550c;

    awg(avg avgVar, String str, long j) {
        this.f4550c = avgVar;
        this.f4548a = str;
        this.f4549b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4550c.f4533a.a(this.f4548a, this.f4549b);
        this.f4550c.f4533a.a(toString());
    }
}
