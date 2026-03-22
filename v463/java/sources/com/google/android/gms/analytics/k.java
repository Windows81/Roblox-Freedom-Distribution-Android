package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ BroadcastReceiver.PendingResult f3278a;

    k(a aVar, BroadcastReceiver.PendingResult pendingResult) {
        this.f3278a = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BroadcastReceiver.PendingResult pendingResult = this.f3278a;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
