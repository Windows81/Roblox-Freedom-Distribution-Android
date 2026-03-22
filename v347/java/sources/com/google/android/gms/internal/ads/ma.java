package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ma extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5295a;

    ma(lz lzVar, String str) {
        this.f5295a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new mk().a(this.f5295a);
    }
}
