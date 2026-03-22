package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gd implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f4392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ long f4393d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ gb f4394e;

    gd(gb gbVar, String str, String str2, Object obj, long j) {
        this.f4394e = gbVar;
        this.f4390a = str;
        this.f4391b = str2;
        this.f4392c = obj;
        this.f4393d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4394e.a(this.f4390a, this.f4391b, this.f4392c, this.f4393d);
    }
}
