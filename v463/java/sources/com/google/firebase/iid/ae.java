package com.google.firebase.iid;

import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ae implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Intent f5198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Intent f5199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ad f5200c;

    ae(ad adVar, Intent intent, Intent intent2) {
        this.f5200c = adVar;
        this.f5198a = intent;
        this.f5199b = intent2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5200c.zzd(this.f5198a);
        this.f5200c.zza(this.f5199b);
    }
}
