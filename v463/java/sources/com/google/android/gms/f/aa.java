package com.google.android.gms.f;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class aa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ z f3921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Callable f3922b;

    aa(z zVar, Callable callable) {
        this.f3921a = zVar;
        this.f3922b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f3921a.a(this.f3922b.call());
        } catch (Exception e2) {
            this.f3921a.a(e2);
        }
    }
}
