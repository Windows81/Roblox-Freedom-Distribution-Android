package com.google.firebase.iid;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ai implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ af f5208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ah f5209b;

    ai(ah ahVar, af afVar) {
        this.f5209b = ahVar;
        this.f5208a = afVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        this.f5209b.f5207a.zzd(this.f5208a.f5201a);
        this.f5208a.a();
    }
}
