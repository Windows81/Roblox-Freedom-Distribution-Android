package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class od implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oa f5371a;

    od(oa oaVar) {
        this.f5371a = oaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5371a.r != null) {
            this.f5371a.r.e();
        }
    }
}
