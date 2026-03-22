package com.google.android.gms.common.internal;

import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ah extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Intent f3746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.internal.h f3747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f3748c;

    ah(Intent intent, com.google.android.gms.common.api.internal.h hVar, int i) {
        this.f3746a = intent;
        this.f3747b = hVar;
        this.f3748c = i;
    }

    @Override // com.google.android.gms.common.internal.h
    public final void a() {
        Intent intent = this.f3746a;
        if (intent != null) {
            this.f3747b.startActivityForResult(intent, this.f3748c);
        }
    }
}
