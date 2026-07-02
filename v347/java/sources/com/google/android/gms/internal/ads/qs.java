package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class qs implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ qq f5493a;

    qs(qq qqVar) {
        this.f5493a = qqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        super/*android.webkit.WebView*/.destroy();
    }
}
