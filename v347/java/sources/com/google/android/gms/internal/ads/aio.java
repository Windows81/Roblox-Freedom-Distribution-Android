package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class aio implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ avg f4049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ahn f4050b;

    aio(ahn ahnVar, avg avgVar) {
        this.f4050b = ahnVar;
        this.f4049a = avgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4050b.f4010c.put(this.f4049a);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
