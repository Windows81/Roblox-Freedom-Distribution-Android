package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class fv implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ij f5037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ft f5038b;

    fv(ft ftVar, ij ijVar) {
        this.f5038b = ftVar;
        this.f5037a = ijVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5038b.b(new ii(this.f5037a, null, null, null, null, null, null, null));
    }
}
