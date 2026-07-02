package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f5995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ i f5996b;

    j(i iVar, boolean z) {
        this.f5996b = iVar;
        this.f5995a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5996b.f5994a.g();
    }
}
