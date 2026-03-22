package com.google.android.gms.iid;

import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Intent f3672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ q f3673b;

    r(q qVar, Intent intent) {
        this.f3673b = qVar;
        this.f3672a = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String action = this.f3672a.getAction();
        Log.w("EnhancedIntentService", new StringBuilder(String.valueOf(action).length() + 61).append("Service took too long to process intent: ").append(action).append(" App may get closed.").toString());
        this.f3673b.a();
    }
}
