package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class oq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oo f5389a;

    oq(oo ooVar) {
        this.f5389a = ooVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5389a.a("surfaceCreated", new String[0]);
    }
}
