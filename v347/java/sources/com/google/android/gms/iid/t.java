package com.google.android.gms.iid;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ q f3675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ s f3676b;

    t(s sVar, q qVar) {
        this.f3676b = sVar;
        this.f3675a = qVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        this.f3676b.f3674a.handleIntent(this.f3675a.f3668a);
        this.f3675a.a();
    }
}
