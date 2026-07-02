package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ be f6000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ i f6001b;

    l(i iVar, be beVar) {
        this.f6001b = iVar;
        this.f6000a = beVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        this.f6001b.f5994a.a(this.f6000a);
    }
}
