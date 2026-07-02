package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ax f6002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ i f6003b;

    m(i iVar, ax axVar) {
        this.f6003b = iVar;
        this.f6002a = axVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6003b.f5994a.a(this.f6002a);
    }
}
