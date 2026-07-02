package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class pm implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ pl f5435a;

    pm(pl plVar) {
        this.f5435a = plVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.aw.z().b(this.f5435a);
    }
}
