package com.google.android.gms.common.internal;

import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ac extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Intent f3460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.internal.e f3461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f3462c;

    ac(Intent intent, com.google.android.gms.common.api.internal.e eVar, int i) {
        this.f3460a = intent;
        this.f3461b = eVar;
        this.f3462c = i;
    }

    @Override // com.google.android.gms.common.internal.h
    public final void a() {
        if (this.f3460a != null) {
            this.f3461b.a(this.f3460a, this.f3462c);
        }
    }
}
