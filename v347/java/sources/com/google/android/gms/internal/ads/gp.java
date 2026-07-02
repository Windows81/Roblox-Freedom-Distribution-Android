package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class gp implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzjj f5048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bbx f5049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ go f5050c;

    gp(go goVar, zzjj zzjjVar, bbx bbxVar) {
        this.f5050c = goVar;
        this.f5048a = zzjjVar;
        this.f5049b = bbxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5050c.a(this.f5048a, this.f5049b);
    }
}
