package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class ax implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ii f4576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ aw f4577b;

    ax(aw awVar, ii iiVar) {
        this.f4577b = awVar;
        this.f4576a = iiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4577b.f4537a.b(this.f4576a);
    }
}
