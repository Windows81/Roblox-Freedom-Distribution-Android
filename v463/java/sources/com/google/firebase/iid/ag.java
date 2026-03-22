package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ag implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Intent f5205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ af f5206b;

    ag(af afVar, Intent intent) {
        this.f5206b = afVar;
        this.f5205a = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String action = this.f5205a.getAction();
        StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
        sb.append("Service took too long to process intent: ");
        sb.append(action);
        sb.append(" App may get closed.");
        Log.w("EnhancedIntentService", sb.toString());
        this.f5206b.a();
    }
}
