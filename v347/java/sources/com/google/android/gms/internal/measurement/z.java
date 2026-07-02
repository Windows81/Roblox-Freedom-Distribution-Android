package com.google.android.gms.internal.measurement;

import android.content.ComponentName;

/* JADX INFO: loaded from: classes.dex */
final class z implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ComponentName f6030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ x f6031b;

    z(x xVar, ComponentName componentName) {
        this.f6031b = xVar;
        this.f6030a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6031b.f6025a.a(this.f6030a);
    }
}
