package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class atv implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ atj f4508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ atu f4509b;

    atv(atu atuVar, atj atjVar) {
        this.f4509b = atuVar;
        this.f4508a = atjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4509b.a(this.f4508a);
    }
}
