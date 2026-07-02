package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bf f6028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ x f6029b;

    y(x xVar, bf bfVar) {
        this.f6029b = xVar;
        this.f6028a = bfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f6029b.f6025a.b()) {
            return;
        }
        this.f6029b.f6025a.c("Connected to service after a timeout");
        this.f6029b.f6025a.a(this.f6028a);
    }
}
