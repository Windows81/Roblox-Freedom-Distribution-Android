package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class os implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f5391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ oo f5392b;

    os(oo ooVar, boolean z) {
        this.f5392b = ooVar;
        this.f5391a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5392b.a("windowVisibilityChanged", "isVisible", String.valueOf(this.f5391a));
    }
}
