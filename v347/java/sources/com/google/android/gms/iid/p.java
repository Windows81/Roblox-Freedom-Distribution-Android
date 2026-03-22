package com.google.android.gms.iid;

import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Intent f3665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Intent f3666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ o f3667c;

    p(o oVar, Intent intent, Intent intent2) {
        this.f3667c = oVar;
        this.f3665a = intent;
        this.f3666b = intent2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3667c.handleIntent(this.f3665a);
        this.f3667c.a(this.f3666b);
    }
}
