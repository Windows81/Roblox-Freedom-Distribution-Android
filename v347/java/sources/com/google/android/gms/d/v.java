package com.google.android.gms.d;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ u f3604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Callable f3605b;

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f3604a.a(this.f3605b.call());
        } catch (Exception e) {
            this.f3604a.a(e);
        }
    }
}
