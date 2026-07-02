package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class oj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oa f5380a;

    oj(oa oaVar) {
        this.f5380a = oaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5380a.r != null) {
            this.f5380a.r.c();
        }
    }
}
