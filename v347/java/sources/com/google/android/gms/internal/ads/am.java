package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class am implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ii f4201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ak f4202b;

    am(ak akVar, ii iiVar) {
        this.f4202b = akVar;
        this.f4201a = iiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4202b.f4107c) {
            ak akVar = this.f4202b;
            akVar.f4105a.b(this.f4201a);
        }
    }
}
