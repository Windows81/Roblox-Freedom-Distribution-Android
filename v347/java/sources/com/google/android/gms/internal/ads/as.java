package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class as implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ii f4420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ar f4421b;

    as(ar arVar, ii iiVar) {
        this.f4421b = arVar;
        this.f4420a = iiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4421b.f4380a.b(this.f4420a);
    }
}
