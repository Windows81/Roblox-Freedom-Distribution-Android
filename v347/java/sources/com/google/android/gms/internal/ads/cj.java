package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class cj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ mk f4904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4905b;

    cj(cg cgVar, mk mkVar, String str) {
        this.f4904a = mkVar;
        this.f4905b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4904a.a(this.f4905b);
    }
}
