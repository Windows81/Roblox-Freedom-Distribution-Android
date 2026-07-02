package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class cx implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ cp f4917a;

    cx(cp cpVar) {
        this.f4917a = cpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4917a.f4909d) {
            if (this.f4917a.f4906a == null) {
                return;
            }
            this.f4917a.b_();
            this.f4917a.a(2, "Timed out waiting for ad response.");
        }
    }
}
