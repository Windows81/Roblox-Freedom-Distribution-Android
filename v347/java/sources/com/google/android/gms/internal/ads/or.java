package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class or implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oo f5390a;

    or(oo ooVar) {
        this.f5390a = ooVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5390a.a("surfaceDestroyed", new String[0]);
    }
}
