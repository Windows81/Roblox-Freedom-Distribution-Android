package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ag extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Intent f3743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Activity f3744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f3745c;

    ag(Intent intent, Activity activity, int i) {
        this.f3743a = intent;
        this.f3744b = activity;
        this.f3745c = i;
    }

    @Override // com.google.android.gms.common.internal.h
    public final void a() {
        Intent intent = this.f3743a;
        if (intent != null) {
            this.f3744b.startActivityForResult(intent, this.f3745c);
        }
    }
}
