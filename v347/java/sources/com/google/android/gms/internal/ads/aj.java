package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class aj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ai f4066a;

    aj(ai aiVar) {
        this.f4066a = aiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4066a.h.get()) {
            jd.c("Timed out waiting for WebView to finish loading.");
            this.f4066a.b();
        }
    }
}
