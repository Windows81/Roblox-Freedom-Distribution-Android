package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class azh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ aza f4664b;

    azh(aza azaVar, String str) {
        this.f4664b = azaVar;
        this.f4663a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4664b.f4649a.loadUrl(this.f4663a);
    }
}
