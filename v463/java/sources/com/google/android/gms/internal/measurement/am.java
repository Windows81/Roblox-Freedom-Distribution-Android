package com.google.android.gms.internal.measurement;

import android.content.ComponentName;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class am implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ComponentName f4033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ak f4034b;

    am(ak akVar, ComponentName componentName) {
        this.f4034b = akVar;
        this.f4033a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4034b.f4028a.a(this.f4033a);
    }
}
