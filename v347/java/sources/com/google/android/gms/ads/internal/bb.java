package com.google.android.gms.ads.internal;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class bb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final am f3044a;

    private bb(am amVar) {
        this.f3044a = amVar;
    }

    static Runnable a(am amVar) {
        return new bb(amVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3044a.b();
    }
}
