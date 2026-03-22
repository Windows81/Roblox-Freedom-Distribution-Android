package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class alc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f4155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ alb f4156b;

    alc(alb albVar, View view) {
        this.f4156b = albVar;
        this.f4155a = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4156b.a(this.f4155a);
    }
}
