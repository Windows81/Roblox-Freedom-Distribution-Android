package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gt implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ long f4433c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ Bundle f4434d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f4435e;
    private final /* synthetic */ boolean f;
    private final /* synthetic */ boolean g;
    private final /* synthetic */ String h;
    private final /* synthetic */ gb i;

    gt(gb gbVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.i = gbVar;
        this.f4431a = str;
        this.f4432b = str2;
        this.f4433c = j;
        this.f4434d = bundle;
        this.f4435e = z;
        this.f = z2;
        this.g = z3;
        this.h = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.i.b(this.f4431a, this.f4432b, this.f4433c, this.f4434d, this.f4435e, this.f, this.g, this.h);
    }
}
