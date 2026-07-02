package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;

/* JADX INFO: loaded from: classes.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ BroadcastReceiver.PendingResult f3262a;

    k(a aVar, BroadcastReceiver.PendingResult pendingResult) {
        this.f3262a = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3262a != null) {
            this.f3262a.finish();
        }
    }
}
