package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fw implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ long f4375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ fe f4376e;

    fw(fe feVar, String str, String str2, String str3, long j) {
        this.f4376e = feVar;
        this.f4372a = str;
        this.f4373b = str2;
        this.f4374c = str3;
        this.f4375d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f4372a;
        if (str == null) {
            this.f4376e.f4320a.J().r().a(this.f4373b, (gv) null);
        } else {
            this.f4376e.f4320a.J().r().a(this.f4373b, new gv(this.f4374c, str, this.f4375d));
        }
    }
}
