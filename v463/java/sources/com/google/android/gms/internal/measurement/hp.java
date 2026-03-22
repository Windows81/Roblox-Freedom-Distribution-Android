package com.google.android.gms.internal.measurement;

import android.content.ComponentName;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hp implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ComponentName f4505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ hn f4506b;

    hp(hn hnVar, ComponentName componentName) {
        this.f4506b = hnVar;
        this.f4505a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4506b.f4500a.a(this.f4505a);
    }
}
